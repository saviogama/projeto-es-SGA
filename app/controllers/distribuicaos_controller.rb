class DistribuicaosController < ApplicationController
  before_action :set_distribuicao, only: [:show, :edit, :update, :destroy]

  # GET /distribuicaos
  # GET /distribuicaos.json
  def index
    @distribuicaos = Distribuicao.all
  end

  # GET /distribuicaos/1
  # GET /distribuicaos/1.json
  def show
  end

  # GET /distribuicaos/new
  def new
    @distribuicao = Distribuicao.new
  end

  # GET /distribuicaos/1/edit
  def edit
  end

  # POST /distribuicaos
  # POST /distribuicaos.json
  def create
    @distribuicao = Distribuicao.new(distribuicao_params)

    respond_to do |format|
      if @distribuicao.save
        format.html { redirect_to @distribuicao, notice: 'Distribuicao was successfully created.' }
        format.json { render :show, status: :created, location: @distribuicao }
      else
        format.html { render :new }
        format.json { render json: @distribuicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribuicaos/1
  # PATCH/PUT /distribuicaos/1.json
  def update
    respond_to do |format|
      if @distribuicao.update(distribuicao_params)
        format.html { redirect_to @distribuicao, notice: 'Distribuicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribuicao }
      else
        format.html { render :edit }
        format.json { render json: @distribuicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribuicaos/1
  # DELETE /distribuicaos/1.json
  def destroy
    @distribuicao.destroy
    respond_to do |format|
      format.html { redirect_to distribuicaos_url, notice: 'Distribuicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribuicao
      @distribuicao = Distribuicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribuicao_params
      params.require(:distribuicao).permit(:obs)
    end
end
