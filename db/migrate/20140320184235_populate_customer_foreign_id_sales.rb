class PopulateCustomerForeignIdSales < ActiveRecord::Migration
  def change
      Sale.find_each do |sale|
      customer_array = sale.customer_and_account_no.split
      customer_match = Customer.find_by(account_num: customer_array[1].gsub("(", "").gsub(")", ""))

      sale.customer_id = customer_match.id
      sale.save
    end
  end
end
