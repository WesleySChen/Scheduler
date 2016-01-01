require 'test_helper'

class EDatesControllerTest < ActionController::TestCase
  setup do
    @e_date = e_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_date" do
    assert_difference('EDate.count') do
      post :create, e_date: { pos_date: @e_date.pos_date }
    end

    assert_redirected_to e_date_path(assigns(:e_date))
  end

  test "should show e_date" do
    get :show, id: @e_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_date
    assert_response :success
  end

  test "should update e_date" do
    patch :update, id: @e_date, e_date: { pos_date: @e_date.pos_date }
    assert_redirected_to e_date_path(assigns(:e_date))
  end

  test "should destroy e_date" do
    assert_difference('EDate.count', -1) do
      delete :destroy, id: @e_date
    end

    assert_redirected_to e_dates_path
  end
end
