class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :price, presence: true
  validates :lable, presence: true, length: { maximum: 20 }
  validates :code, presence: true, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  has_many :cart_items, dependent: :destroy

  def self.search(keyword)
    where 'name LIKE ? OR code LIKE ? OR lable LIKE ?', "%#{keyword}%",
          "%#{keyword}%", "%#{keyword}%"
  end

  def self.category(label_name)
    where 'lable LIKE ?', "%#{label_name}%"
  end
end
