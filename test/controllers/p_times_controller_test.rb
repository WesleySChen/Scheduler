require 'test_helper'

class PTimesControllerTest < ActionController::TestCase
  setup do
    @p_time = p_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_time" do
    assert_difference('PTime.count') do
      post :create, p_time: { p_end: @p_time.p_end, p_start: @p_time.p_start }
    end

    assert_redirected_to p_time_path(assigns(:p_time))
  end

  test "should show p_time" do
    get :show, id: @p_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_time
    assert_response :success
  end

  test "should update p_time" do
    patch :update, id: @p_time, p_time: { p_end: @p_time.p_end, p_start: @p_time.p_start }
    assert_redirected_to p_time_path(assigns(:p_time))
  end

  test "should destroy p_time" do
    assert_difference('PTime.count', -1) do
      delete :destroy, id: @p_time
    end

    assert_redirected_to p_times_path
  end
end
