class AddReceiptsTable < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :name
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
