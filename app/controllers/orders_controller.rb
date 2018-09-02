class OrdersController < ApplicationController
  def index
    @order = Order.all
  end

  def show
  end
  

  def destroy
  @order = Order.find_by(params[:id])
  @order.destroy
  redirect_to(orders_path)
  end
end
