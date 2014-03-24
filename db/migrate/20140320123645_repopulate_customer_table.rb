class RepopulateCustomerTable < ActiveRecord::Migration
  def change
     Sale.find_each do |sale|
      customer_array = sale.customer_and_account_no.split
      Customer.find_or_create_by({name: customer_array[0], account_num: customer_array[1].gsub("(", "").gsub(")", "")})
    end
  end
end
