class ContratosController < ApplicationController
  def create
    @fornecedor = Fornecedor.find(params[:fornecedor_id])
    @contrato = @fornecedor.contratos.create(contrato_params)
    redirect_to fornecedor_path(@fornecedor)
  end
 
  def destroy
    @fornecedor = Fornecedor.find(params[:fornecedor_id])
    @contrato = @fornecedor.contratos.find(params[:id])
    @contrato.destroy
    redirect_to fornecedor_path(@fornecedor)
  end
 
  private
    def contrato_params
      params.require(:contrato).permit(:n_contrato, :data, :n_lic, :desc)
    end
end
