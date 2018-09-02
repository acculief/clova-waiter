class OrdersController < ApplicationController
  before_action :set_order , only: [:destroy]
  def index
    @order = Order.all
  end




  def destroy
  @order.destroy
  redirect_to(orders_path)
  end

  def set_order
    @order = Order.find_by(params[:id])
  end
end
