class CategoriesController < ApplicationController
  def shirt
    @products = Product.category "shirt"
  end
  def pant
    @products = Product.category "pant"
  end
  def dress
    @products = Product.category "dress"
  end
  def vest
    @products = Product.category "vest"
  end
  def index
  end
end
