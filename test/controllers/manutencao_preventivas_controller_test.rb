require 'test_helper'

class ManutencaoPreventivasControllerTest < ActionController::TestCase
  setup do
    @manutencao_preventiva = manutencao_preventivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manutencao_preventivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manutencao_preventiva" do
    assert_difference('ManutencaoPreventiva.count') do
      post :create, manutencao_preventiva: { data_manutencao: @manutencao_preventiva.data_manutencao, descricao: @manutencao_preventiva.descricao, email: @manutencao_preventiva.email, email_enviado: @manutencao_preventiva.email_enviado, kilometragem_manutencao: @manutencao_preventiva.kilometragem_manutencao, veiculo_id: @manutencao_preventiva.veiculo_id }
    end

    assert_redirected_to manutencao_preventiva_path(assigns(:manutencao_preventiva))
  end

  test "should show manutencao_preventiva" do
    get :show, id: @manutencao_preventiva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manutencao_preventiva
    assert_response :success
  end

  test "should update manutencao_preventiva" do
    patch :update, id: @manutencao_preventiva, manutencao_preventiva: { data_manutencao: @manutencao_preventiva.data_manutencao, descricao: @manutencao_preventiva.descricao, email: @manutencao_preventiva.email, email_enviado: @manutencao_preventiva.email_enviado, kilometragem_manutencao: @manutencao_preventiva.kilometragem_manutencao, veiculo_id: @manutencao_preventiva.veiculo_id }
    assert_redirected_to manutencao_preventiva_path(assigns(:manutencao_preventiva))
  end

  test "should destroy manutencao_preventiva" do
    assert_difference('ManutencaoPreventiva.count', -1) do
      delete :destroy, id: @manutencao_preventiva
    end

    assert_redirected_to manutencao_preventivas_path
  end
end
