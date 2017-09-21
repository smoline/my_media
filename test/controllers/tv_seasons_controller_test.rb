require 'test_helper'

class TvSeasonsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @tv_season = tv_seasons(:one)
  end

  test "should get index" do
    get tv_seasons_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_season_url
    assert_response :success
  end

  test "should create tv_season" do
    assert_difference('TvSeason.count') do
      post tv_seasons_url, params: { tv_season: { air_date: @tv_season.air_date, name: @tv_season.name, overview: @tv_season.overview, season_number: @tv_season.season_number, season_poster_path: @tv_season.season_poster_path, tmdb_season_id: @tv_season.tmdb_season_id, tv_show_id: @tv_season.tv_show_id } }
    end

    assert_redirected_to tv_season_url(TvSeason.last)
  end

  test "should show tv_season" do
    get tv_season_url(@tv_season)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_season_url(@tv_season)
    assert_response :success
  end

  test "should update tv_season" do
    patch tv_season_url(@tv_season), params: { tv_season: { air_date: @tv_season.air_date, name: @tv_season.name, overview: @tv_season.overview, season_number: @tv_season.season_number, season_poster_path: @tv_season.season_poster_path, tmdb_season_id: @tv_season.tmdb_season_id, tv_show_id: @tv_season.tv_show_id } }
    assert_redirected_to tv_season_url(@tv_season)
  end

  test "should destroy tv_season" do
    assert_difference('TvSeason.count', -1) do
      delete tv_season_url(@tv_season)
    end

    assert_redirected_to tv_seasons_url
  end
end
