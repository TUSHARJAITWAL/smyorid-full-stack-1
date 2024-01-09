class Order < ApplicationRecord
  validates :shipping_address, :payment_method, presence: true

  belongs_to :user
  has_many :order_items, dependent: :destroy
  after_create :create_order_items

  private

  def create_order_items
    cart_items = user.cart.cart_items
    cart_items.each do |cart_item|
      order_item = order_items.new
      order_item.product_id = cart_item.product_id
      order_item.quantity = cart_item.quantity

      if order_item.save
        cart_item.delete
      else
        raise ActiveRecord::Rollback
      end
    end
  end
end
