// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function order_by_occurrence2(arr) {
  var counts = {};
  arr.forEach(function(value){
    if(!counts[value]) {
      counts[value] = 0;
    }
    counts[value]++;
  });

  return Object.keys(counts).sort(function(curKey,nextKey) {
    return counts[curKey] < counts[nextKey];
  });
}

function process_game_barcode(upc) {
  $.ajax({
    type: "POST",
    url: '/games/get_barcode',
    data: { upc: upc }
  }).then(function(gameInfo) {
    console.log(gameInfo)
    if (gameInfo != "") {
      $('#games-info').html('')
      gameInfo.forEach(function(game) {
        console.log(game)
        $('#choose-game-modal').modal('show')
        $('#games-info').append(`<li data-upc="${upc}" data-igdb-id="${game.id}">${game.name}</li>`)
      })
    } else {
      $('#refresh-modal').modal('show')
      $('#went-wrong-notice').append(`<h3>Looks like something went wrong, click ok to try again</h3>`)
    }
  });
}

function process_game_choices(gameInfo) {
  $('#games-info').html('')
  gameInfo.forEach(function(game) {
    console.log(game)
    $('#choose-game-modal').modal('show')
    $('#games-info').append(`<li data-igdb-id="${game.id}">${game.name}</li>`)
  })
}

function load_quagga2(){
  if ($('#barcode-scanner-game').length > 0 && navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') {

    var last_result = [];
    if (Quagga.initialized == undefined) {
      Quagga.onDetected(function(result) {
        var last_code = result.codeResult.code;
        last_result.push(last_code);
        if (last_result.length > 20) {
          code = order_by_occurrence2(last_result)[0];
          last_result = [];
          Quagga.stop();
          process_game_barcode(last_code)
        }
      });
    }

    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        numOfWorkers: navigator.hardwareConcurrency,
        target: document.querySelector('#barcode-scanner-game')
      },
      decoder: {
          readers : ['upc_reader','upc_e_reader','ean_reader','ean_8_reader','code_39_reader','code_39_vin_reader','codabar_reader','code_128_reader']
      }
    },function(err) {
        if (err) { console.log(err); return }
        Quagga.initialized = true;
        Quagga.start();
    });

  }
};

$(document).on('turbolinks:load', function() {
   load_quagga2()

  $('.barcode-game-scanner').on('click', function() {
    process_game_barcode('45496902445')
  })

  $('#btn-game-scanner').on('click', function() {
    $('#game-title-search').hide()
    $('#show-game-scanner').show()
  })

  $('#btn-game-search').on('click', function() {
    $('#show-game-scanner').hide()
    $('#game-title-search').show()
  })

  $('#game-form-click').on('click', function() {
    $('.new-game-form').submit();
    Quagga.stop();
    $("input[type='submit']", this)
      .val("Please Wait...")
      .attr('disabled', 'disabled');
      $('.spinner').show()
  });

  $('#search-game-title').on('click', function() {
    let title = $('#game-title').val()
    console.log(`the title is ${title}`)

    $.ajax({
      type: "POST",
      url: '/games/get_games',
      data: { title: title }
    }).then(function(gameInfo) {
      process_game_choices(gameInfo)
    });
  })

  $('#games-info').on('click', 'li', function() {
    let igdb_id = $(this).data('igdb-id')
    let upc = $(this).data('upc')

    console.log(`The igdb id is ${igdb_id}`)
    $.ajax({
      type: "POST",
      url: '/games/get_game_info',
      data: { igdb_id: igdb_id, upc: upc }
    })
  })

  // // Pagination with AJAX
  // $('.game-paginator').on('click', '.page-item a', function(event) {
  //   let pageNumber = $(this).text()
  //   console.log(`The page number is ${pageNumber}`)
  //   event.preventDefault()
  //
  //   $.ajax({
  //     type: "GET",
  //     url: '/games',
  //     dataType: 'script',
  //     data: { page: pageNumber }
  //   })
  // })
});
