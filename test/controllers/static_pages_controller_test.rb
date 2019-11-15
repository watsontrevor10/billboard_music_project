require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get top_25" do
    get static_pages_top_25_url
    assert_response :success
  end

end
