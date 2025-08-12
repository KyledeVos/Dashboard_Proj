require "test_helper"

class PercentagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get percentages_index_url
    assert_response :success
  end
end
