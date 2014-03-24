class AddCustomerAccountNumber < ActiveRecord::Migration
  def change
    change_column :customers, :account_num, :string

     Sale.find_each do |sale|
      customer_array = sale.customer_and_account_no.split
      Customer.where(name: customer_array[0]).take.update_attribute({account_num: customer_array[1].gsub("(", "").gsub(")", "")})
      #Customer.update_attribute(:account_num: "")
      #where(name: customer_array[0])

    end
  end
end
