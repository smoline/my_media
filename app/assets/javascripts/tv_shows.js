// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function process_tv_show_choices(tvshowInfo) {
  $('#tv-shows-info').html('')
  tvshowInfo.forEach(function(tv_show) {
    console.log(tv_show)
    $('#choose-tv-modal').modal('show')
    $('#tv-shows-info').append(`<li data-tmdb-id="${tv_show.id}">${tv_show.name}</li>`)
  })
}

$(document).on('turbolinks:load', function() {

  $('#search-name').on('click', function() {
    let name = $('#tv-show-name').val()
    console.log(`the title is ${name}`)

    $.ajax({
      type: "POST",
      url: '/tv_shows/get_tv_shows',
      data: { name: name }
    }).then(function(tvshowInfo) {
      process_tv_show_choices(tvshowInfo)
    });
  })

  $('#tv-shows-info').on('click', 'li', function() {
    let tmdb_show_id = $(this).data('tmdb-show-id')

    console.log(`The tmdb id is ${tmdb_show_id}`)
    $.ajax({
      type: "POST",
      url: '/tv_shows/get_tv_show_info',
      data: { tmdb_show_id: tmdb_show_id }
    })
  })
})
