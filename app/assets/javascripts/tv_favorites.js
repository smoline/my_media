// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

// TV Favoriting
  $('.custom-body-js').on('click', '.tv-fav-heart', function(event) {
    let tvshowId = $(this).data("tvshowid")
    $(this).removeClass('tv-fav-heart')
    $(this).addClass('tv-faved-heart')

    $.ajax({
      type: "POST",
      url: 'tv_favorites/' + tvshowId
    })
  })

  // TV Unfavoriting
  $('.custom-body-js').on('click', '.tv-faved-heart', function(event) {
    let tvshowId = $(this).data("tvshowid")
    $(this).removeClass('tv-faved-heart')
    $(this).addClass('tv-fav-heart')

    $.ajax({
      type: "DELETE",
      url: 'tv_favorites/destroy/' + tvshowId
    })
  })
})
