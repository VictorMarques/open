require 'test_helper'

class WashingsControllerTest < ActionController::TestCase
  setup do
    @washing = washings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:washings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create washing" do
    assert_difference('Washing.count') do
      post :create, washing: { automovel_id: @washing.automovel_id, type_id: @washing.type_id }
    end

    assert_redirected_to washing_path(assigns(:washing))
  end

  test "should show washing" do
    get :show, id: @washing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @washing
    assert_response :success
  end

  test "should update washing" do
    put :update, id: @washing, washing: { automovel_id: @washing.automovel_id, type_id: @washing.type_id }
    assert_redirected_to washing_path(assigns(:washing))
  end

  test "should destroy washing" do
    assert_difference('Washing.count', -1) do
      delete :destroy, id: @washing
    end

    assert_redirected_to washings_path
  end
end
