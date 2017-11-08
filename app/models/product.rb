class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :price, presence: true
  validates :lable, presence: true, length: { maximum: 20 }
  validates :code, presence: true, uniqueness: true
end
