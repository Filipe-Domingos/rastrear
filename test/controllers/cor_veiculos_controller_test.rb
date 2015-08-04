require 'test_helper'

class CorVeiculosControllerTest < ActionController::TestCase
  setup do
    @cor_veiculo = cor_veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cor_veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cor_veiculo" do
    assert_difference('CorVeiculo.count') do
      post :create, cor_veiculo: { descricao: @cor_veiculo.descricao }
    end

    assert_redirected_to cor_veiculo_path(assigns(:cor_veiculo))
  end

  test "should show cor_veiculo" do
    get :show, id: @cor_veiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cor_veiculo
    assert_response :success
  end

  test "should update cor_veiculo" do
    patch :update, id: @cor_veiculo, cor_veiculo: { descricao: @cor_veiculo.descricao }
    assert_redirected_to cor_veiculo_path(assigns(:cor_veiculo))
  end

  test "should destroy cor_veiculo" do
    assert_difference('CorVeiculo.count', -1) do
      delete :destroy, id: @cor_veiculo
    end

    assert_redirected_to cor_veiculos_path
  end
end
