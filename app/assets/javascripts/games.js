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
          $.ajax({
            type: "POST",
            url: '/games/get_barcode',
            data: { upc: last_code }
          });
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
