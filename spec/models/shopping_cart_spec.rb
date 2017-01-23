require "rails_helper"

describe ShoppingCart do
  let(:karretje) { ShoppingCart.new 12, 5}
  before do
    karretje.add_to_cart 345, 3
  end

  describe "#add_to_cart" do
    it "can add a product to the cart" do
      karretje.add_to_cart(453, 3)
      expect(karretje.items.size).to eq(3)
      expect(karretje.items).to have_key(453)
    end
  end

  describe "#remove_from_cart" do
    it "can remove a product from the cart" do
      karretje.remove_from_cart(345)
      expect(karretje.items.size).to eq(1)
      expect(karretje.items).not_to have_key(345)
    end
  end

  describe "#update_quantity" do
    it "can update the quantity of a product in the cart" do
      karretje.update_quantity 345, 15
      expect(karretje.items[345]).to eq(15)
    end

    it "removes the product from the cart if quantity equals 0" do
      karretje.update_quantity 345, 0
      expect(karretje.items).not_to have_key(345)
    end
  end
end
