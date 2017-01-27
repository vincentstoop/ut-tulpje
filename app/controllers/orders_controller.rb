class OrdersController < ApplicationController



  def index
    @orders = Order.where("user_id = ?", current_user.id)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.new
    # create Lineitems
    if @order.valid?
      lineitems = []
      total_price = 0
      @shopping_cart.items.each do |product, quantity|
        current_lineitem = Lineitem.create(product: Product.find(product.to_i),
                                           quantity: quantity, unit_price: Product.find(product.to_i).price)
        lineitems << current_lineitem
        total_price += current_lineitem.quantity * current_lineitem.unit_price
      end
      @order.lineitems = lineitems
      @order.total_price = total_price
      if @order.save
        session[:shoppingcart] = nil
        redirect_to user_orders_path
      else
        render :new
      end
    else
      render :new
    end
  end

end
