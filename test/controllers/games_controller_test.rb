require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get new_user_session_path
    assert_equal 200, status
    @someone = User.create(email: "someone@mail.com", password: "helloworld", password_confirmation: "helloworld", confirmed_at: Time.now)
    sign_in @someone
    @game = games(:one)
  end

  test "should get index" do
    get games_url
    assert_response :success
  end

  test "should get new" do
    get new_game_url
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { created_by_id: @game.created_by_id, description: @game.description, title: @game.title, upc: @game.upc } }
    end

    assert_redirected_to game_url(Game.last)
  end

  test "should show game" do
    get game_url(@game)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_url(@game)
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { created_by_id: @game.created_by_id, description: @game.description, title: @game.title, upc: @game.upc } }
    assert_redirected_to game_url(@game)
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
end
