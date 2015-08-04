require 'test_helper'

class TipoVeiculosControllerTest < ActionController::TestCase
  setup do
    @tipo_veiculo = tipo_veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_veiculo" do
    assert_difference('TipoVeiculo.count') do
      post :create, tipo_veiculo: { descricao: @tipo_veiculo.descricao }
    end

    assert_redirected_to tipo_veiculo_path(assigns(:tipo_veiculo))
  end

  test "should show tipo_veiculo" do
    get :show, id: @tipo_veiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_veiculo
    assert_response :success
  end

  test "should update tipo_veiculo" do
    patch :update, id: @tipo_veiculo, tipo_veiculo: { descricao: @tipo_veiculo.descricao }
    assert_redirected_to tipo_veiculo_path(assigns(:tipo_veiculo))
  end

  test "should destroy tipo_veiculo" do
    assert_difference('TipoVeiculo.count', -1) do
      delete :destroy, id: @tipo_veiculo
    end

    assert_redirected_to tipo_veiculos_path
  end
end
