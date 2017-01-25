class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :init_shopping_cart

  def init_shopping_cart
    session[:shoppingcart] ||= Hash.new(0)
    debugger
    @shopping_cart = ShoppingCart.new(session[:shoppingcart])
    @shopping_cart_items = {}
    @total_price = 0
    # @shopping_cart = {"1" => 5, "3" => 2}
    @number_of_cart_items = 0
    debugger
    @shopping_cart.items.each_value do |quantity|
      debugger
      @number_of_cart_items += quantity.to_i
    end
    shopping_cart_keys = @shopping_cart.items.keys
    shopping_cart_keys.each do |product|
      @shopping_cart_items[product] = Product.find product.to_i
      @total_price += @shopping_cart_items[product].price * @shopping_cart[product]
    end
  end
end
