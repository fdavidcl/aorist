require 'test_helper'

class CobrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
