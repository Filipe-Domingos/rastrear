class AgendamentoViagensController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  before_action :set_agendamento_viagem, only: [:show, :edit, :update, :destroy]

  # GET /agendamento_viagens
  # GET /agendamento_viagens.json
  def index
#    @agendamento_viagens = AgendamentoViagem.all
    agendamento_viagens_scope = AgendamentoViagem.all
    agendamento_viagens_scope = agendamento_viagens_scope.joins(:veiculo).where("LOWER(veiculos.placa) LIKE '%#{params[:filter].downcase}%'") if params[:filter]
    @agendamento_viagens = smart_listing_create(:agendamento_viagens, agendamento_viagens_scope, partial: "agendamento_viagens/listing", default_sort: {data_hora_saida: "asc"})
  end

  # GET /agendamento_viagens/1
  # GET /agendamento_viagens/1.json
  def show
  end

  # GET /agendamento_viagens/new
  def new
    @agendamento_viagem = AgendamentoViagem.new
    @veiculos = Veiculo.combo_manutencao_preventiva
    @condutores = Condutor.all.order(nome: :asc)
  end

  # GET /agendamento_viagens/1/edit
  def edit
    @veiculos = Veiculo.combo_manutencao_preventiva
    @condutores = Condutor.all.order(nome: :asc)
  end

  # POST /agendamento_viagens
  # POST /agendamento_viagens.json
  def create
    ano = params[:agendamento_viagem]["data_hora_saida(1i)"].to_i
    mes = params[:agendamento_viagem]["data_hora_saida(2i)"].to_i
    dia = params[:agendamento_viagem]["data_hora_saida(3i)"].to_i
    hora = params[:agendamento_viagem]["data_hora_saida(4i)"].to_i
    minuto = params[:agendamento_viagem]["data_hora_saida(5i)"].to_i
    
    @agendamento_viagem = AgendamentoViagem.new(agendamento_viagem_params)
    @agendamento_viagem.data_hora_saida = DateTime.new(ano,mes,dia,hora,minuto,0)
    
    respond_to do |format|
      if @agendamento_viagem.save
        flash.now[:notice] = 'Viagem agendada com sucesso.'
        format.html { redirect_to @agendamento_viagem  }
        format.json { render :show, status: :created, location: @agendamento_viagem }
      else
        @veiculos = Veiculo.combo_manutencao_preventiva
        @condutores = Condutor.all.order(nome: :asc)

        format.html { render :new }
        format.json { render json: @agendamento_viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendamento_viagens/1
  # PATCH/PUT /agendamento_viagens/1.json
  def update
    ano = params[:agendamento_viagem]["data_hora_saida(1i)"].to_i
    mes = params[:agendamento_viagem]["data_hora_saida(2i)"].to_i
    dia = params[:agendamento_viagem]["data_hora_saida(3i)"].to_i
    hora = params[:agendamento_viagem]["data_hora_saida(4i)"].to_i
    minuto = params[:agendamento_viagem]["data_hora_saida(5i)"].to_i

    @agendamento_viagem.data_hora_saida = DateTime.new(ano,mes,dia,hora,minuto,0)
    respond_to do |format|
      if @agendamento_viagem.update(agendamento_viagem_params)
        flash.now[:notice] = 'Viagem atualizada com sucesso.'
        format.html { redirect_to @agendamento_viagem }
        format.json { render :show, status: :ok, location: @agendamento_viagem }
      else

        @veiculos = Veiculo.combo_manutencao_preventiva
        @condutores = Condutor.all.order(nome: :asc)

        format.html { render :edit }
        format.json { render json: @agendamento_viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamento_viagens/1
  # DELETE /agendamento_viagens/1.json
  def destroy
    @agendamento_viagem.destroy
    respond_to do |format|
      flash.now[:notice] = 'Viagem removida com sucesso.'
      format.html { redirect_to agendamento_viagens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamento_viagem
      @agendamento_viagem = AgendamentoViagem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendamento_viagem_params
      params.require(:agendamento_viagem).permit(:veiculos_id, :condutores_id)
    end
end
