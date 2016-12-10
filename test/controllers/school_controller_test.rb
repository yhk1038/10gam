require 'test_helper'

class SchoolControllerTest < ActionController::TestCase
  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get saves" do
    get :saves
    assert_response :success
  end

  test "should get deletes" do
    get :deletes
    assert_response :success
  end

end
