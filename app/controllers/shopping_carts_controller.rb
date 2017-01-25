class ShoppingCartsController < ApplicationController
  before_action :set_product
  before_action :set_quantity

  #checks inbouwen

  def add
    if is_available?
      session[:shoppingcart] = @shopping_cart.add_to_cart @product, @quantity
      redirect_to products_path, notice: "Added to your cart."
    else
      redirect_to product_path(@product.to_i), notice: "Sorry, this product is not in stock."
    end
    # debugger
  end

  def remove
    session[:shoppingcart] = @shopping_cart.remove_from_cart @product
    redirect_to products_path
  end

  def update
    session[:shoppingcart] = @shopping_cart.update_quantity @product, @quantity
  end

  def empty
    @shopping_cart.delete_all_items
    session[:shoppingcart] = nil
  end

  private

  def set_product
    @product = params[:product_id].to_s
  end

  def set_quantity
    @quantity = params[:quantity] ? params[:quantity].to_i : 1
  end

  def is_available?
    debugger
    Product.find(params[:product_id]).availability
  end
end
