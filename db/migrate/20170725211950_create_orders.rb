class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :total, default: 0
      t.string :billing_name
      t.string :billing_address
      t.string :shipping_name
      t.string :shipping_address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
