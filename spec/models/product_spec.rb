require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      product = Product.new(name: "")
      product.valid?
      expect(product.errors).to have_key(:name)
    end
  end

  it "is invalid with a description longer than 100 characters" do
      product = Product.new(description: "Aksldfda jhfjsjfgas fef s dkjcnskjdhv v aklsdlfjaseelwae fkwfawejfhewajf awjwefnejk ahgjshagfjshdafg ywaegfbhsavfyc")
      product.valid?
      expect(product.errors).to have_key(:description)
    end
end
