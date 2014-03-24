class AddPriceToProduct < ActiveRecord::Migration
  def change
     Sale.find_each do |sale|
      Product.find_or_create_by({price: sale.sale_amount})
    end
  end
end
