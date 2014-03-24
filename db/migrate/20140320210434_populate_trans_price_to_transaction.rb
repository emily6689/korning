class PopulateTransPriceToTransaction < ActiveRecord::Migration
  def change
    Product.find_each do |product|
      Transaction.where(product_id: product.id).update_all({trans_price: product.price})
    end
  end
end
