class PopulateProductTable < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      Product.find_or_create_by({name: sale.product_name})
    end
  end
end
