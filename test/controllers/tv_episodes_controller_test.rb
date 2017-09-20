require 'test_helper'

class TvEpisodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_episode = tv_episodes(:one)
  end

  test "should get index" do
    get tv_episodes_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_episode_url
    assert_response :success
  end

  test "should create tv_episode" do
    assert_difference('TvEpisode.count') do
      post tv_episodes_url, params: { tv_episode: { air_date: @tv_episode.air_date, created_by_id: @tv_episode.created_by_id, description: @tv_episode.description, episode_number: @tv_episode.episode_number, season_number: @tv_episode.season_number, title: @tv_episode.title, tmdb_episode_id: @tv_episode.tmdb_episode_id } }
    end

    assert_redirected_to tv_episode_url(TvEpisode.last)
  end

  test "should show tv_episode" do
    get tv_episode_url(@tv_episode)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_episode_url(@tv_episode)
    assert_response :success
  end

  test "should update tv_episode" do
    patch tv_episode_url(@tv_episode), params: { tv_episode: { air_date: @tv_episode.air_date, created_by_id: @tv_episode.created_by_id, description: @tv_episode.description, episode_number: @tv_episode.episode_number, season_number: @tv_episode.season_number, title: @tv_episode.title, tmdb_episode_id: @tv_episode.tmdb_episode_id } }
    assert_redirected_to tv_episode_url(@tv_episode)
  end

  test "should destroy tv_episode" do
    assert_difference('TvEpisode.count', -1) do
      delete tv_episode_url(@tv_episode)
    end

    assert_redirected_to tv_episodes_url
  end
end
