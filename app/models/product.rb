class Product < ApplicationRecord
  validates :name, :description, :price, :quantity, :category, :brand, presence: true
end
