require 'test_helper'

class CondutoresControllerTest < ActionController::TestCase
  setup do
    @condutor = condutores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condutores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condutor" do
    assert_difference('Condutor.count') do
      post :create, condutor: { categoria_cnh_id: @condutor.categoria_cnh_id, cnh: @condutor.cnh, nome: @condutor.nome, vencimento: @condutor.vencimento }
    end

    assert_redirected_to condutor_path(assigns(:condutor))
  end

  test "should show condutor" do
    get :show, id: @condutor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condutor
    assert_response :success
  end

  test "should update condutor" do
    patch :update, id: @condutor, condutor: { categoria_cnh_id: @condutor.categoria_cnh_id, cnh: @condutor.cnh, nome: @condutor.nome, vencimento: @condutor.vencimento }
    assert_redirected_to condutor_path(assigns(:condutor))
  end

  test "should destroy condutor" do
    assert_difference('Condutor.count', -1) do
      delete :destroy, id: @condutor
    end

    assert_redirected_to condutores_path
  end
end
