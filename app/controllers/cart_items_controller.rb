# app/controllers/cart_items_controller.rb
class CartItemsController < ApplicationController
  before_action :set_cart_item, only: [:show, :edit, :update, :destroy]

  def create
    @cart_item = current_cart.cart_items.find_or_initialize_by(product_id: params[:product_id])
    @cart_item.quantity += 1
    @cart_item.total_price = @cart_item.product.price * @cart_item.quantity

    if @cart_item.save
      render json: {items_count: current_cart.cart_items.count}, status: 200
    else
      render json: {error: @cart_item.errors}, status: 400
    end
  end

  def update
    if @cart_item.update(cart_item_params)
      redirect_to current_cart, notice: 'Cart item quantity updated.'
    else
      redirect_to current_cart, alert: 'Error updating cart item quantity.'
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to current_cart, notice: 'Cart item removed.'
  end

  private

  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end
end
