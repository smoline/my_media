require 'test_helper'

class GameFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get game_favorites_create_url
    assert_response :success
  end

  test "should get destroy" do
    get game_favorites_destroy_url
    assert_response :success
  end

end
