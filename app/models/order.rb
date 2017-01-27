class Order < ApplicationRecord
  belongs_to :user
  has_many :lineitems, dependent: :destroy

  def calculate_order_total
    #write method that calculates the total value of the Order
    total_price = 0
    lineitems.each do |lineitem|
      total_price += lineitem.quantity * lineitem.unit_price
    end
    total_price
  end
end
