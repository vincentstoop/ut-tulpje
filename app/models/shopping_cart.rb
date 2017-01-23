class ShoppingCart
  attr_reader :items

  def initialize product_id, quantity = 1
    @items = {}
    add_to_cart product_id, quantity
  end

  def add_to_cart product, quantity = 1
    @items[product] = quantity
  end

  def remove_from_cart product
    @items.delete(product)
  end

  def update_quantity product, quantity
    if quantity == 0
      remove_from_cart product
      return
    else
      @items[product] = quantity
    end
  end

end
