require 'test_helper'

class RailsappControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get railsapp_index_url
    assert_response :success
  end

  test "should get details" do
    get railsapp_details_url
    assert_response :success
  end

end
