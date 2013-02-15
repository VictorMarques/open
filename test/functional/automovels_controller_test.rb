require 'test_helper'

class AutomovelsControllerTest < ActionController::TestCase
  setup do
    @automovel = automovels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:automovels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create automovel" do
    assert_difference('Automovel.count') do
      post :create, automovel: { born_on: @automovel.born_on, nome: @automovel.nome, tipo: @automovel.tipo }
    end

    assert_redirected_to automovel_path(assigns(:automovel))
  end

  test "should show automovel" do
    get :show, id: @automovel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @automovel
    assert_response :success
  end

  test "should update automovel" do
    put :update, id: @automovel, automovel: { born_on: @automovel.born_on, nome: @automovel.nome, tipo: @automovel.tipo }
    assert_redirected_to automovel_path(assigns(:automovel))
  end

  test "should destroy automovel" do
    assert_difference('Automovel.count', -1) do
      delete :destroy, id: @automovel
    end

    assert_redirected_to automovels_path
  end
end
