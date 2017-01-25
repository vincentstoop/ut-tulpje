class Order < ApplicationRecord
  belongs_to :user
  has_many :lineitems, dependent: :destroy

  def total_value
    #write method that calculates the total value of the Order
  end
end
