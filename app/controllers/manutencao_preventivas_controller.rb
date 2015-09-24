class ManutencaoPreventivasController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  before_action :set_manutencao_preventiva, only: [:show, :edit, :update, :destroy]

  # GET /manutencao_preventivas
  # GET /manutencao_preventivas.json
  def index
    manutencoes_scope = ManutencaoPreventiva.all
    manutencoes_scope = manutencoes_scope.where("LOWER(#{params[:field]}) = #{params[:filter]}") if params[:filter]
    @manutencoes = smart_listing_create(:manutencoes, manutencoes_scope, partial: "manutencao_preventivas/listing", default_sort: {created_at: "desc"})
  end

  # GET /manutencao_preventivas/1
  # GET /manutencao_preventivas/1.json
  def show
  end

  # GET /manutencao_preventivas/new
  def new
    @manutencao_preventiva = ManutencaoPreventiva.new
    @veiculos = Veiculo.combo_manutencao_preventiva
  end

  # GET /manutencao_preventivas/1/edit
  def edit
    @veiculos = Veiculo.combo_manutencao_preventiva
  end

  # POST /manutencao_preventivas
  # POST /manutencao_preventivas.json
  def create
    
    @manutencao_preventiva = ManutencaoPreventiva.new(manutencao_preventiva_params)

    respond_to do |format|
      if @manutencao_preventiva.save
        format.html { redirect_to new_manutencao_preventiva_path, notice: 'Manutenção preventiva cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @manutencao_preventiva }
      else
        @veiculos = Veiculo.combo_manutencao_preventiva

        format.html { render :new }
        format.json { render json: @manutencao_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manutencao_preventivas/1
  # PATCH/PUT /manutencao_preventivas/1.json
  def update
    respond_to do |format|
      if @manutencao_preventiva.update(manutencao_preventiva_params)
        format.html { redirect_to manutencao_preventivas_url, notice: 'Manutenção preventiva atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @manutencao_preventiva }
      else
        @veiculos = Veiculo.combo_manutencao_preventiva

        format.html { render :edit }
        format.json { render json: @manutencao_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manutencao_preventivas/1
  # DELETE /manutencao_preventivas/1.json
  def destroy
    @manutencao_preventiva.destroy
    respond_to do |format|
      format.html { redirect_to manutencao_preventivas_url, notice: 'Manutenção preventiva excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manutencao_preventiva
      @manutencao_preventiva = ManutencaoPreventiva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manutencao_preventiva_params
      params.require(:manutencao_preventiva).permit(:data_manutencao, :email, :email_enviado, :kilometragem_manutencao, :veiculo_id, :descricao)
    end
end
