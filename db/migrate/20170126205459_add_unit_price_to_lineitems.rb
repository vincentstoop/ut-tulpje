class AddUnitPriceToLineitems < ActiveRecord::Migration[5.0]
  def change
    add_column :lineitems, :unit_price, :decimal
  end
end
