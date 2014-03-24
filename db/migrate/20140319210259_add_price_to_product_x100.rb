class AddPriceToProductX100 < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      products = Product.where(name: sale.product_name, price: sale.sale_amount.to_i)
      if products.any?
        product = products.take
        product.price = (sale.sale_amount * 100).to_i
        product.save
      end
    end
  end
end
