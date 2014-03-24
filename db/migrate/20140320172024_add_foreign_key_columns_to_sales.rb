class AddForeignKeyColumnsToSales < ActiveRecord::Migration
  def up
    add_column :sales, :employee_id, :integer
    add_column :sales, :customer_id, :integer
  end

  def down
    remove_column :sales, :employee_id
    remove_column :sales, :customer_id
  end
end
