class RepopulateProductTable < ActiveRecord::Migration
  def change
     Sale.find_each do |sale|
      product_array = [sale.product_name, (sale.sale_amount*100/sale.units_sold)]
      Product.find_or_create_by({name: product_array[0], price: product_array[1]})
    end
  end
end
