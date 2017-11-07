require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(name: "Kimono Sleeve Shirt", lable: "office-wear", 
      price: 123)
  end

  test "should be valid" do
    assert @product.valid?
  end

  test "name should be present" do
    @product.name = ""
    assert_not @product.valid?
  end

  test "name should be uniqueness" do
    duplicate_product = @product.dup
    @product.save
    assert_not duplicate_product.valid?
  end

  test "lable should be present" do
    @product.lable = ""
    assert_not @product.valid?
  end

  test "price should be present" do
    @product.price = ""
    assert_not @product.valid?
  end

  test "name should not be too long" do
    @product.name = "a" * 51
    assert_not @product.valid?
  end

  test "email should not be too long" do
    @product.lable = "a" * 21
    assert_not @product.valid?
  end
end
