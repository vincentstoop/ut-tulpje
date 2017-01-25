class ShoppingCart
  attr_accessor :items, :product, :quantity

  # def initialize product_id, quantity = 1
  #   @items = {}
  #   add_to_cart product_id, quantity
  # end

  def initialize (shoppingcart)
    @items = shoppingcart
    # debugger
  end

  def add_to_cart product, quantity = 1
    @items[product.to_s] = quantity
    debugger
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

end
