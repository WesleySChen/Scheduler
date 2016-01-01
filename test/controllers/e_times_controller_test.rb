require 'test_helper'

class ETimesControllerTest < ActionController::TestCase
  setup do
    @e_time = e_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_time" do
    assert_difference('ETime.count') do
      post :create, e_time: { end_time: @e_time.end_time, start_time: @e_time.start_time }
    end

    assert_redirected_to e_time_path(assigns(:e_time))
  end

  test "should show e_time" do
    get :show, id: @e_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_time
    assert_response :success
  end

  test "should update e_time" do
    patch :update, id: @e_time, e_time: { end_time: @e_time.end_time, start_time: @e_time.start_time }
    assert_redirected_to e_time_path(assigns(:e_time))
  end

  test "should destroy e_time" do
    assert_difference('ETime.count', -1) do
      delete :destroy, id: @e_time
    end

    assert_redirected_to e_times_path
  end
end
