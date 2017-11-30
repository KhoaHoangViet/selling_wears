class ProductsController < ApplicationController
  def show
    @product = Product.find_by id: params[:id]
  end

  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order "created_at DESC"
    else
      @products = Product.all.order "created_at DESC"
    end
  end
end
