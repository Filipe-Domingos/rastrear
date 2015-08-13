class CondutoresController < ApplicationController
  before_action :set_condutor, only: [:show, :edit, :update, :destroy]

  # GET /condutores
  # GET /condutores.json
  def index
    @condutores = Condutor.all
  end

  # GET /condutores/1
  # GET /condutores/1.json
  def show
  end

  # GET /condutores/new
  def new
    @condutor = Condutor.new
    @categorias = CategoriaCnh.all.order(:descricao)
  end

  # GET /condutores/1/edit
  def edit
  end

  # POST /condutores
  # POST /condutores.json
  def create
    @condutor = Condutor.new(condutor_params)

    respond_to do |format|
      if @condutor.save
        format.html { redirect_to @condutor, notice: 'Condutor cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @condutor }
      else
        format.html { render :new }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condutores/1
  # PATCH/PUT /condutores/1.json
  def update
    respond_to do |format|
      if @condutor.update(condutor_params)
        format.html { redirect_to @condutor, notice: 'Condutor atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @condutor }
      else
        format.html { render :edit }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condutores/1
  # DELETE /condutores/1.json
  def destroy
    @condutor.destroy
    respond_to do |format|
      format.html { redirect_to condutores_url, notice: 'Condutor removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condutor
      @condutor = Condutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condutor_params
      params.require(:condutor).permit(:nome, :cnh, :vencimento_cnh, :categoria_cnh_id)
    end
end
