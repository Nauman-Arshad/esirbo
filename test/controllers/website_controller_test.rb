require "test_helper"

class WebsiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get website_home_url
    assert_response :success
  end
end
