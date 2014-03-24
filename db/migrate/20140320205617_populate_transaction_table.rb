class PopulateTransactionTable < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      matching_product = Product.where(name: sale.product_name).take
      Transaction.create(sale_id: sale.id, product_id: matching_product.id, quantity: sale.units_sold)
    end
  end
end
