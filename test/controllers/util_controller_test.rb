require 'test_helper'

class UtilControllerTest < ActionController::TestCase
  test "should get take_school_list" do
    get :take_school_list
    assert_response :success
  end

end
