require 'test_helper'

class Users::ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_images_create_url
    assert_response :success
  end

  test "should get destroy" do
    get users_images_destroy_url
    assert_response :success
  end

end
