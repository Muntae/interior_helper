require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get room" do
    get :room
    assert_response :success
  end

  test "should get mypage" do
    get :mypage
    assert_response :success
  end

end
