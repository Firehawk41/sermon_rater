require "test_helper"

class SermonsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sermons_show_url
    assert_response :success
  end

  test "should get results" do
    get sermons_results_url
    assert_response :success
  end
end
