// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// $(document).ready(function() {
$(document).on('turbolinks:load', function() {

 // Favoriting
  $('.custom-body-js').on('click', '.fav-heart', function(event) {
    let movieId = $(this).data("movieid")
    $(this).removeClass('fav-heart')
    $(this).addClass('faved-heart')

    $.ajax({
      type: "POST",
      url: '/favorites/' + movieId
    })
  })

  // Unfavoriting
  $('.custom-body-js').on('click', '.faved-heart', function(event) {
    let movieId = $(this).data("movieid")
    $(this).removeClass('faved-heart')
    $(this).addClass('fav-heart')

    $.ajax({
      type: "DELETE",
      url: '/favorites/destroy/' + movieId
    })
  })

})
