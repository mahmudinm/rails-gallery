require 'test_helper'

class Admin::DasboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dasboards_index_url
    assert_response :success
  end

end
