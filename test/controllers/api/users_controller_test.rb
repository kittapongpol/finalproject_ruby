require "test_helper"

class Api::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get current_user" do
    get api_users_current_user_url
    assert_response :success
  end
end
