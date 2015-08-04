class CorVeiculosController < ApplicationController
  before_action :set_cor_veiculo, only: [:show, :edit, :update, :destroy]

  # GET /cor_veiculos
  # GET /cor_veiculos.json
  def index
    @cor_veiculos = CorVeiculo.all
  end

  # GET /cor_veiculos/1
  # GET /cor_veiculos/1.json
  def show
  end

  # GET /cor_veiculos/new
  def new
    @cor_veiculo = CorVeiculo.new
  end

  # GET /cor_veiculos/1/edit
  def edit
  end

  # POST /cor_veiculos
  # POST /cor_veiculos.json
  def create
    @cor_veiculo = CorVeiculo.new(cor_veiculo_params)

    respond_to do |format|
      if @cor_veiculo.save
        format.html { redirect_to @cor_veiculo, notice: 'Cor veiculo was successfully created.' }
        format.json { render :show, status: :created, location: @cor_veiculo }
      else
        format.html { render :new }
        format.json { render json: @cor_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cor_veiculos/1
  # PATCH/PUT /cor_veiculos/1.json
  def update
    respond_to do |format|
      if @cor_veiculo.update(cor_veiculo_params)
        format.html { redirect_to @cor_veiculo, notice: 'Cor veiculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cor_veiculo }
      else
        format.html { render :edit }
        format.json { render json: @cor_veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cor_veiculos/1
  # DELETE /cor_veiculos/1.json
  def destroy
    @cor_veiculo.destroy
    respond_to do |format|
      format.html { redirect_to cor_veiculos_url, notice: 'Cor veiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cor_veiculo
      @cor_veiculo = CorVeiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cor_veiculo_params
      params.require(:cor_veiculo).permit(:descricao)
    end
end
