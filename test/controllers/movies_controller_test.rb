require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get new_user_session_path
    assert_equal 200, status
    @someone = User.create(email: "someone@mail.com", password: "helloworld", password_confirmation: "helloworld", confirmed_at: Time.now)
    sign_in @someone
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { description: @movie.description, release_date: @movie.release_date, runtime: @movie.runtime, tagline: @movie.tagline, title: @movie.title, tmdb_id: @movie.tmdb_id, owner_attributes: { user_id: @someone.id } } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { description: @movie.description, release_date: @movie.release_date, runtime: @movie.runtime, tagline: @movie.tagline, title: @movie.title, tmdb_id: @movie.tmdb_id } }
    assert_redirected_to movie_url(@movie)
  end

  # Test is not valid because a movie is never destroyed, only the owner record is
  # test "should destroy movie" do
  #   assert_difference('Movie.count', -1) do
  #     delete movie_url(@movie)
  #   end
  #   assert_redirected_to movies_url
  # end
end
