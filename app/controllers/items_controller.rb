class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(strong_params)
    @item.restaurant = current_restaurant
    if @item.save
      redirect_to dashboard_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to dashboard_path(@item)
    end
  end

  private

  def strong_params
    params.require(:item).permit(:name, :description, :price)
  end
end
