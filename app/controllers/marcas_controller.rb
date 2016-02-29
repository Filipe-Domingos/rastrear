class MarcasController < ApplicationController
  before_action :set_marca, only: [:show, :edit, :update, :destroy]

  # GET /marcas
  # GET /marcas.json
  def index
    @marcas = Marca.all.order(:descricao)
  end

  # GET /marcas/1
  # GET /marcas/1.json
  def show
  end

  # GET /marcas/new
  def new
    @marca = Marca.new
    @tipo_veiculos = TipoVeiculo.all
  end

  # GET /marcas/1/edit
  def edit
    @tipo_veiculos = TipoVeiculo.all
  end

  # POST /marcas
  # POST /marcas.json
  def create
    @marca = Marca.new(marca_params)

    params[:tipo_veiculos_ids].each do |t|
      tipo = TipoVeiculo.find(t)
      @marca.tipo_veiculos << tipo
    end

    respond_to do |format|
      if @marca.save
        flash.now[:notice] = 'Marca cadastrada com sucesso.'
        format.html { redirect_to marcas_path  }
        format.json { render :show, status: :created, location: @marca }
      else
        format.html { render :new }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcas/1
  # PATCH/PUT /marcas/1.json
  def update
    respond_to do |format|
      if @marca.update(marca_params)
        flash.now[:notice] = 'Marca alterada com sucesso.'
        format.html { redirect_to marcas_path }
        format.json { render :show, status: :ok, location: @marca }
      else
        format.html { render :edit }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcas/1
  # DELETE /marcas/1.json
  def destroy
    @marca.destroy
    respond_to do |format|
      format.html { redirect_to marcas_url }
      format.json { head :no_content }
    end
  end

  def marcas_by_tipo_veiculo
    tipo_veiculo = TipoVeiculo.find(params[:tipo_veiculo_id])
    respond_to do |format|
      format.json { render :json => tipo_veiculo.marcas }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_params
      params.require(:marca).permit(:descricao,:tipo_veiculos_ids => [])
    end
end
