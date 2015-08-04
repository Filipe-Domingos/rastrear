class TipoVeiculosController < ApplicationController
  before_action :set_tipo_veiculo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_veiculos
  # GET /tipo_veiculos.json
  def index
    @tipo_veiculos = TipoVeiculo.all
  end

  # GET /tipo_veiculos/1
  # GET /tipo_veiculos/1.json
  def show
  end

  # GET /tipo_veiculos/new
  def new
    @tipo_veiculo = TipoVeiculo.new
  end

  # GET /tipo_veiculos/1/edit
  def edit
  end

  # POST /tipo_veiculos
  # POST /tipo_veiculos.json
  def create
    @tipo_veiculo = TipoVeiculo.new(tipo_veiculo_params)

    respond_to do |format|
      if @tipo_veiculo.save
        format.html { redirect_to @tipo_veiculo, notice: 'Tipo veiculo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_veiculo }
      else
        format.html { render :new }
        format.json { render json: @tipo_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_veiculos/1
  # PATCH/PUT /tipo_veiculos/1.json
  def update
    respond_to do |format|
      if @tipo_veiculo.update(tipo_veiculo_params)
        format.html { redirect_to @tipo_veiculo, notice: 'Tipo veiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_veiculo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_veiculos/1
  # DELETE /tipo_veiculos/1.json
  def destroy
    @tipo_veiculo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_veiculos_url, notice: 'Tipo veiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_veiculo
      @tipo_veiculo = TipoVeiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_veiculo_params
      params.require(:tipo_veiculo).permit(:descricao)
    end
end
