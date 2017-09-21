require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  test "should get landing" do
    get pages_landing_url
    assert_response :success
  end

end
