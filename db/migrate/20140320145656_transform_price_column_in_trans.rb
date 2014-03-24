class TransformPriceColumnInTrans < ActiveRecord::Migration
  def up
    add_column :transactions, :trans_price, :integer
    remove_column :transactions, :price
  end

  def down
    remove_column :transactions, :trans_price
    add_column :transactions, :price, :integer
  end
end
