class AddSaleIdToInvoice < ActiveRecord::Migration
  def up
    add_column :invoices, :sale_id, :integer
  end

  def down
    remove_column :invoices, :sale_id
  end
end
