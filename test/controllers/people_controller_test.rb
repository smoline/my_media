require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get new_user_session_path
    assert_equal 200, status
    @someone = User.create(email: "someone@mail.com", password: "helloworld", password_confirmation: "helloworld", confirmed_at: Time.now)
    sign_in @someone
    @person = people(:one)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end
end
