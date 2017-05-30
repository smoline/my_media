// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('turbolinks:load', function() {

 // Favoriting
  $('.custom-body-js').on('click', '.game-fav-heart', function(event) {
    let gameId = $(this).data("gameid")
    $(this).removeClass('game-fav-heart')
    $(this).addClass('game-faved-heart')

    $.ajax({
      type: "POST",
      url: '/game_favorites/' + gameId
    })
  })

  // Unfavoriting
  $('.custom-body-js').on('click', '.game-faved-heart', function(event) {
    let gameId = $(this).data("gameid")
    $(this).removeClass('game-faved-heart')
    $(this).addClass('game-fav-heart')

    $.ajax({
      type: "DELETE",
      url: '/game_favorites/destroy/' + gameId
    })
  })

})
