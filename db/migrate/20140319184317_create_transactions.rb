class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :sale_id
      t.integer :product_id
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
