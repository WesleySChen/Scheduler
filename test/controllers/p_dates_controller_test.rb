require 'test_helper'

class PDatesControllerTest < ActionController::TestCase
  setup do
    @p_date = p_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_date" do
    assert_difference('PDate.count') do
      post :create, p_date: { avail_date: @p_date.avail_date }
    end

    assert_redirected_to p_date_path(assigns(:p_date))
  end

  test "should show p_date" do
    get :show, id: @p_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_date
    assert_response :success
  end

  test "should update p_date" do
    patch :update, id: @p_date, p_date: { avail_date: @p_date.avail_date }
    assert_redirected_to p_date_path(assigns(:p_date))
  end

  test "should destroy p_date" do
    assert_difference('PDate.count', -1) do
      delete :destroy, id: @p_date
    end

    assert_redirected_to p_dates_path
  end
end
