require 'test_helper'

class Users::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_users_show_url
    assert_response :success
  end

  test "should get change_password" do
    get users_users_change_password_url
    assert_response :success
  end

end
