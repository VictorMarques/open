require 'test_helper'

class TipoLavagemsControllerTest < ActionController::TestCase
  setup do
    @tipo_lavagem = tipo_lavagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_lavagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_lavagem" do
    assert_difference('TipoLavagem.count') do
      post :create, tipo_lavagem: { nome: @tipo_lavagem.nome }
    end

    assert_redirected_to tipo_lavagem_path(assigns(:tipo_lavagem))
  end

  test "should show tipo_lavagem" do
    get :show, id: @tipo_lavagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_lavagem
    assert_response :success
  end

  test "should update tipo_lavagem" do
    put :update, id: @tipo_lavagem, tipo_lavagem: { nome: @tipo_lavagem.nome }
    assert_redirected_to tipo_lavagem_path(assigns(:tipo_lavagem))
  end

  test "should destroy tipo_lavagem" do
    assert_difference('TipoLavagem.count', -1) do
      delete :destroy, id: @tipo_lavagem
    end

    assert_redirected_to tipo_lavagems_path
  end
end
