class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :price, presence: true
  validates :lable, presence: true, length: { maximum: 20 }
  validates :code, presence: true, uniqueness: true
  # validates_numericality_of :stock, :price, greater_than_or_equal_to: 0
  validates_numericality_of :price, greater_than_or_equal_to: 0
  has_many :cart_items
end
