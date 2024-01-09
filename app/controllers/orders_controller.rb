class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.total_amount = current_cart.grand_total
    @order.status = 'order_placed'

    if @order.save
      redirect_to products_path, notice: "Order Successfully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:shipping_address, :payment_method)
  end
end
