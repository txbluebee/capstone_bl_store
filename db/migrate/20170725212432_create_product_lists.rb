class CreateProductLists < ActiveRecord::Migration[5.1]
  def change
    create_table :product_lists do |t|
      t.string :product_name
      t.decimal :product_price
      t.integer :product_quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
