class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :init_shopping_cart

  def init_shopping_cart
    @shopping_cart = session[:shoppingcart] || {}
    @shopping_cart_items = {}
    @total_price = 0
    # @shopping_cart = {"1" => 5, "3" => 2}
    @number_of_cart_items = 0
    @shopping_cart.each_value do |quantity|
      @number_of_cart_items += quantity
    end
    shopping_cart_keys = @shopping_cart.keys
    shopping_cart_keys.each do |product|
      @shopping_cart_items[product] = Product.find product.to_i
      @total_price += @shopping_cart_items[product].price * @shopping_cart[product]
    end
  end
end
