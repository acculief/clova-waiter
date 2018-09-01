class Api::V1::OrdersController < ApplicationController

  def create
    order = Order.new(order_params)

    if order.save
      render json: order, status: 200
    else
      render json: { errors: order.errors.full_messages[0] }, status: :unprocessable_entity
    end
  end


  private

  def order_params
    params.require(:order).permit(:order_name, :order_amount, :total_price)
  end



end
