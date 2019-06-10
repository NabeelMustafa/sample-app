require 'test_helper'

class SuccessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get success_index_url
    assert_response :success
  end

end
