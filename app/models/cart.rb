class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  def add_product(product_params)
    current_item = cart_items.find_by product_id: product_params[:product_id]

    if current_item
      current_item.quantity += product_params[:quantity].to_i
      current_item.save
    else
      new_item = cart_items.create product_id: product_params[:product_id],
                                   quantity: product_params[:quantity],
                                   cart_id: id
    end
    new_item
  end

  def cart_size
    size = 0
    cart_items.each do |cart_item|
      size += cart_item.quantity
    end
    size
  end

  def total_price
    cart_items.to_a.sum(&:total_price)
  end
end
