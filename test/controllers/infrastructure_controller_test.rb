require 'test_helper'

class InfrastructureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get infrastructure_index_url
    assert_response :success
  end

end
