class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :index
  # before_action :set_item, only: :show

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id, :status_id, :ship_fee_id, :ship_area_id, :ship_days_id,
                                 :price, :image).merge(user_id: current_user.id)
  end

  # def set_item
  #   @item = Item.find(params[:id])
  # end

end
