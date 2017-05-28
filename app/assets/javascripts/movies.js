// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function order_by_occurrence(arr) {
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

function process_barcode(upc) {
  $.ajax({
    type: "POST",
    url: '/movies/get_barcode',
    data: { upc: upc }
  }).then(function(movieInfo) {
    console.log(movieInfo)
    if (movieInfo != null) {
      $('#movies-info').html('')
      movieInfo.forEach(function(movie) {
        console.log(movie)
        $('#choose-modal').modal('show')
        $('#movies-info').append(`<li data-upc="${upc}" data-tmdb-id="${movie.id}">${movie.title} - ${movie.release_date}</li>`)
      })
    } else {
      $('#refresh-modal').modal('show')
      $('#went-wrong-notice').append(`<h3>Looks like something went wrong, click ok to try again</h3>`)
    }
  });
}

function process_movie_choices(movieInfo) {
  $('#movies-info').html('')
  movieInfo.forEach(function(movie) {
    console.log(movie)
    $('#choose-modal').modal('show')
    $('#movies-info').append(`<li data-tmdb-id="${movie.id}">${movie.title} - ${movie.release_date}</li>`)
  })
}

function load_quagga(){
  if ($('#barcode-scanner').length > 0 && navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') {

    var last_result = [];
    if (Quagga.initialized == undefined) {
      Quagga.onDetected(function(result) {
        var last_code = result.codeResult.code;
        last_result.push(last_code);
        if (last_result.length > 20) {
          code = order_by_occurrence(last_result)[0];
          last_result = [];
          Quagga.stop();
          process_barcode(last_code)
        }
      });
    }

    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        numOfWorkers: navigator.hardwareConcurrency,
        target: document.querySelector('#barcode-scanner')
      },
      decoder: {
          readers : ['upc_reader','upc_e_reader']
      }
    },function(err) {
        if (err) { console.log(err); return }
        Quagga.initialized = true;
        Quagga.start();
    });

  }
};
$(document).on('turbolinks:load', load_quagga);

$(document).on('turbolinks:load', function() {
  $('.barcode-scanner-title').on('click', function() {
    process_barcode('883929034604')
  })

  $('#btn-scanner').on('click', function() {
    $('#title-search').hide()
    $('#show-scanner').show()
  })

  $('#refresh-ok').on('click', function() {
    location.reload()
  })

  $('#btn-title-search').on('click', function() {
    $('#show-scanner').hide()
    $('#title-search').show()
  })

  $('#search-title').on('click', function() {
    let title = $('#movie-title').val()
    console.log(`the title is ${title}`)

    $.ajax({
      type: "POST",
      url: '/movies/get_movies',
      data: { title: title }
    }).then(function(movieInfo) {
      process_movie_choices(movieInfo)
    });
  })

  $('#movies-info').on('click', 'li', function() {
    let tmdb_id = $(this).data('tmdb-id')
    let upc = $(this).data('upc')

    console.log(`The tmdb id is ${tmdb_id}`)
    $.ajax({
      type: "POST",
      url: '/movies/get_movie_info',
      data: { tmdb_id: tmdb_id, upc: upc }
    })
  })

  $('.s-ul').on('click', '.minhour', function(event) {
    if ($(this).data('showing-hours') === 'true') {
      let mins = $(this).data("mins")
      $(this).text(`${mins} Mins.`)
      $(this).data('showing-hours', 'false')
    } else {
      let hours = $(this).data("hours")
      $(this).text(`${hours} Hrs.`)
      $(this).data('showing-hours', 'true')
    }
  })
});
