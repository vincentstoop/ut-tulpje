class ShoppingCartsController < ApplicationController
  before_action :set_product
  before_action :set_quantity

  def add
    session[:shoppingcart] = @shopping_cart.add_to_cart @product, @quantity
    # debugger
    redirect_to products_path
  end

  def remove
    session[:shoppingcart] = @shopping_cart.remove_from_cart @product
  end

  def update
    session[:shoppingcart] = @shopping_cart.update_quantity @product, @quantity
  end

  private

  def set_product
    @product = params[:product_id]
  end

  def set_quantity
    @quantity = params[:quantity]
  end
end
