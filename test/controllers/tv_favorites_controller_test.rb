require 'test_helper'

class TvFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tv_favorites_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tv_favorites_destroy_url
    assert_response :success
  end

end
