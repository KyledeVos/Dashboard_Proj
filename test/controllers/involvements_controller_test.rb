require "test_helper"

class InvolvementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get involvements_index_url
    assert_response :success
  end
end
