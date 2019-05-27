class RefeicaosController < ApplicationController
  before_action :set_refeicao, only: [:show, :edit, :update, :destroy]

  # GET /refeicaos
  # GET /refeicaos.json
  def index
    @refeicaos = Refeicao.all
  end

  # GET /refeicaos/1
  # GET /refeicaos/1.json
  def show
  end

  # GET /refeicaos/new
  def new
    @refeicao = Refeicao.new
  end

  # GET /refeicaos/1/edit
  def edit
  end

  # POST /refeicaos
  # POST /refeicaos.json
  def create
    @refeicao = Refeicao.new(refeicao_params)

    respond_to do |format|
      if @refeicao.save
        format.html { redirect_to @refeicao, notice: 'Refeicao was successfully created.' }
        format.json { render :show, status: :created, location: @refeicao }
      else
        format.html { render :new }
        format.json { render json: @refeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refeicaos/1
  # PATCH/PUT /refeicaos/1.json
  def update
    respond_to do |format|
      if @refeicao.update(refeicao_params)
        format.html { redirect_to @refeicao, notice: 'Refeicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @refeicao }
      else
        format.html { render :edit }
        format.json { render json: @refeicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refeicaos/1
  # DELETE /refeicaos/1.json
  def destroy
    @refeicao.destroy
    respond_to do |format|
      format.html { redirect_to refeicaos_url, notice: 'Refeicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refeicao
      @refeicao = Refeicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refeicao_params
      params.require(:refeicao).permit(:nome, :peso_liquido, :desc)
    end
end
