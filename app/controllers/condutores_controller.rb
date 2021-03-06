class CondutoresController < ApplicationController
  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper
  before_action :set_condutor, only: [:show, :edit, :update, :destroy]

  # GET /condutores
  # GET /condutores.json
  def index
    condutores_scope = Condutor.all
    condutores_scope = condutores_scope.where("LOWER(nome) LIKE '%#{params[:filter].downcase}%'") if params[:filter]
    @condutores = smart_listing_create(:condutores, condutores_scope, partial: "condutores/listing", default_sort: {nome: "asc"})
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
    @categorias = CategoriaCnh.all.order(:descricao)
  end

  # POST /condutores
  # POST /condutores.json
  def create
#    params.require(:condutor)[:telefone] = params.require(:condutor)[:telefone].gsub(/[-,(,)]/,'')
    @condutor = Condutor.new(condutor_params)

    respond_to do |format|
      if @condutor.save
        flash.now[:notice] = 'Condutor cadastrado com sucesso.'
        format.html { redirect_to condutores_path }
        format.json { render :show, status: :created, location: @condutor }
      else

        @categorias = CategoriaCnh.all.order(:descricao)

        format.html { render :new }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condutores/1
  # PATCH/PUT /condutores/1.json
  def update
    
#    params.require(:condutor)[:telefone] = params.require(:condutor)[:telefone].gsub(/[-,(,),' ']/,'')
    respond_to do |format|
      
      if @condutor.update(condutor_params)
        flash.now[:notice] = "Condutor atualizado com sucesso."
        format.html { redirect_to condutores_path  }
        format.json { render :show, status: :ok, location: @condutor }
      else
        @categorias = CategoriaCnh.all.order(:descricao)

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
      format.html { redirect_to condutores_url }
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
      params.require(:condutor).permit(:nome, :cnh, :vencimento_cnh, :categoria_cnh_id, :telefone)
    end
end
