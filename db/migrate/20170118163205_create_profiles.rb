class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :prefix
      t.string :last_name
      t.string :street_name
      t.integer :house_number
      t.string :house_number_addition
      t.string :zip_code
      t.string :city
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
