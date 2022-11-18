require "test_helper"

class Apiv1ControllerTest < ActionDispatch::IntegrationTest
  test "should get query" do
    get apiv1_query_url
    assert_response :success
  end
end
