class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :reference_number
      t.string :image_url
      t.string :video_url
      t.boolean :availability
      t.decimal :price
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
