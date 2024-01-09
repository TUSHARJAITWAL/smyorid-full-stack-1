class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy

  def grand_total
    cart_items.map(&:total_price).sum
  end
end
