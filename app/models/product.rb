class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :price, presence: true
  validates :lable, presence: true, length: { maximum: 20 }
end
