require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get email" do
    get users_email_url
    assert_response :success
  end

  test "should get password" do
    get users_password_url
    assert_response :success
  end

  test "should get password_confirmation" do
    get users_password_confirmation_url
    assert_response :success
  end
end
