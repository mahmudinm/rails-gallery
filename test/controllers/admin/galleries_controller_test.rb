require 'test_helper'

class Admin::GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_galleries_index_url
    assert_response :success
  end

end
