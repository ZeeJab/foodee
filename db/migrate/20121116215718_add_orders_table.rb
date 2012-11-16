class AddOrdersTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :amount
      t.integer :receipt_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
