require 'test_helper'

class Users::GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_galleries_index_url
    assert_response :success
  end

  test "should get new" do
    get users_galleries_new_url
    assert_response :success
  end

  test "should get show" do
    get users_galleries_show_url
    assert_response :success
  end

end
