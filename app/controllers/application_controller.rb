class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :init_shopping_cart

  def init_shopping_cart
    session[:shoppingcart] ||= Hash.new(0)
    @shopping_cart = ShoppingCart.new(session[:shoppingcart])
    @shopping_cart_items = Hash.new
    @total_price = 0
    # @shopping_cart = {"1" => 5, "3" => 2}
    @number_of_cart_items = 0
    @shopping_cart.items.each_value do |quantity|
      @number_of_cart_items += quantity.to_i
    end
    shopping_cart_keys = @shopping_cart.items.keys
    shopping_cart_keys.each do |product|
      debugger
      @shopping_cart_items[product] = Product.find product.to_i
      debugger
      @total_price += @shopping_cart_items[product].price * session[:shoppingcart][product].to_i
      debugger
    end
  end
end
