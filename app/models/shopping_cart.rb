class ShoppingCart
  attr_accessor :items, :product, :quantity

  # def initialize product_id, quantity = 1
  #   @items = {}
  #   add_to_cart product_id, quantity
  # end

  def initialize (shoppingcart)
    @items = shoppingcart
  end

  def add_to_cart product, quantity = 1
    @items[product] = quantity
    @items
  end

  def remove_from_cart product
    @items.delete(product.to_s)
    @items
  end

  def update_quantity product, quantity
    if quantity == 0
      remove_from_cart product.to_s
      return
    else
      @items[product.to_s] = quantity
      @items
    end
  end

  def delete_all_items
    @items = {}
  end

  def number_of_items_in_cart
    number_of_cart_items = 0
    @items.each_value do |quantity|
      number_of_cart_items += quantity.to_i
    end
    number_of_cart_items
  end

  def calculate_total_price
    shopping_cart_items = Hash.new
    total_price = 0
    shopping_cart_keys = @items.keys
    shopping_cart_keys.each do |product|
      shopping_cart_items[product] = Product.find product.to_i
      total_price += shopping_cart_items[product].price * @items[product].to_i
    end
    total_price
    # number_to_currency(total_price, unit: "€", precision: 2, separator: ",")
  end



  # @shopping_cart.items.each_value do |quantity|
  #   @number_of_cart_items += quantity.to_i
  # end
end
