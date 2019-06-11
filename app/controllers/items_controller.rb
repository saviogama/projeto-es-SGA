class ItemsController < ApplicationController
  def create
    @estoque = Estoque.find(params[:estoque_id])
    @item = @estoque.items.create(item_params)
    redirect_to estoque_path(@estoque)
  end
 
  def destroy
    @estoque = Estoque.find(params[:estoque_id])
    @item = @estoque.items.find(params[:id])
    @item.destroy
    redirect_to estoque_path(@estoque)
  end
 
  private
    def item_params
      params.require(:item).permit(:nome, :data_val, :n_lote, :desc, :unidade)
    end
end
