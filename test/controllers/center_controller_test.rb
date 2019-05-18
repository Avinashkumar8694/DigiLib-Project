require 'test_helper'

class CenterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get center_index_url
    assert_response :success
  end

  test "should get upload" do
    get center_upload_url
    assert_response :success
  end

end
