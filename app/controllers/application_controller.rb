class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :init_shopping_cart

  def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
    if request.referer == sign_in_url
      new_user_order_path(current_user)
      # super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  def init_shopping_cart
    session[:shoppingcart] ||= Hash.new(0)
    @shopping_cart = ShoppingCart.new(session[:shoppingcart])
    # @shopping_cart = {"1" => 5, "3" => 2}
    @items_in_cart = @shopping_cart.number_of_items_in_cart
    @order_total = @shopping_cart.calculate_total_price
  end
end
