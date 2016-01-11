require 'test_helper'

class ContabilidadControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
