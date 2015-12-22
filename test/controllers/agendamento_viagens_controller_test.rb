require 'test_helper'

class AgendamentoViagensControllerTest < ActionController::TestCase
  setup do
    @agendamento_viagem = agendamento_viagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agendamento_viagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agendamento_viagem" do
    assert_difference('AgendamentoViagem.count') do
      post :create, agendamento_viagem: {  }
    end

    assert_redirected_to agendamento_viagem_path(assigns(:agendamento_viagem))
  end

  test "should show agendamento_viagem" do
    get :show, id: @agendamento_viagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agendamento_viagem
    assert_response :success
  end

  test "should update agendamento_viagem" do
    patch :update, id: @agendamento_viagem, agendamento_viagem: {  }
    assert_redirected_to agendamento_viagem_path(assigns(:agendamento_viagem))
  end

  test "should destroy agendamento_viagem" do
    assert_difference('AgendamentoViagem.count', -1) do
      delete :destroy, id: @agendamento_viagem
    end

    assert_redirected_to agendamento_viagens_path
  end
end
