class VeiculosController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  before_action :set_veiculo, only: [:show, :edit, :update, :destroy]

  # GET /veiculos
  # GET /veiculos.json
  def index
    
    veiculos_scope = Veiculo.all
    veiculos_scope = veiculos_scope.where("UPPER(placa) LIKE '%#{params[:filter]}%'") if params[:filter]
    @veiculos = smart_listing_create(:veiculos, veiculos_scope, partial: "veiculos/listing", default_sort: {placa: "asc"})
  end

  # GET /veiculos/1
  # GET /veiculos/1.json
  def show
  end

  # GET /veiculos/new
  def new
    @veiculo = Veiculo.new
    @marcas = Marca.all.order(:descricao)
    @modelos = Modelo.all.order(:descricao)
    @cores = CorVeiculo.all.order(:descricao)
    @tipo_veiculos = TipoVeiculo.all.order(:descricao)
  end

  # GET /veiculos/1/edit
  def edit
    @marcas = Marca.all.order(:descricao)
    @modelos = Modelo.all.order(:descricao)
    @cores = CorVeiculo.all.order(:descricao)
    @tipo_veiculos = TipoVeiculo.all.order(:descricao)
  end

  # POST /veiculos
  # POST /veiculos.json
  def create
    
    @veiculo = Veiculo.new(veiculo_params)
    @veiculo.placa = @veiculo.placa.upcase
    
    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to new_veiculo_path, notice: 'Veiculo cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @veiculo }
      else
        @marcas = Marca.all.order(:descricao)
        @modelos = Modelo.all.order(:descricao)
        @cores = CorVeiculo.all.order(:descricao)
        @tipo_veiculos = TipoVeiculo.all.order(:descricao)        
  
        format.html { render :new }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veiculos/1
  # PATCH/PUT /veiculos/1.json
  def update
    respond_to do |format|
      if @veiculo.update(veiculo_params)
        format.html { redirect_to edit_veiculo_path(@veiculo) , notice: 'Veiculo atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @veiculo }
      else
        @marcas = Marca.all.order(:descricao)
        @modelos = Modelo.all.order(:descricao)
        @cores = CorVeiculo.all.order(:descricao)
        @tipo_veiculos = TipoVeiculo.all.order(:descricao)

        format.html { render :edit }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1
  # DELETE /veiculos/1.json
  def destroy
    @veiculo.destroy
    respond_to do |format|
      format.html { redirect_to veiculos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veiculo
      @veiculo = Veiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veiculo_params
      params.require(:veiculo).permit(:modelo_id, :marca_id, :placa, :renavam, :cor_veiculo_id, :chassi, :peso, :capacidade_carga, :tipo_veiculo_id)
    end
end
