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
  @order = Order.new(sent: false,
                     user: current_user)

  # create Lineitems
  if @order.valid?
    lineitems = []
    @shopping_cart.each do |product, quantity|
      current_lineitem = Lineitem.create(product: Product.find(product.to_i),
                                         quantity: quantity, price: Product.find(product.to_i).price)
      lineitems << current_lineitem
    end
    @order.lineitems = lineitems
    if @order.save
      session[:cart] = nil
      redirect_to @order
    else
      render :new
    end
  else
    render :new
  end
end

end
