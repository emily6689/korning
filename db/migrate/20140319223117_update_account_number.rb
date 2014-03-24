class UpdateAccountNumber < ActiveRecord::Migration
  def change
     Sale.find_each do |sale|
      customer_array = sale.customer_and_account_no.split
      Customer.where(name: customer_array[0]).take.update({account_num: customer_array[1].gsub("(", "").gsub(")", "")})
    end
  end
end
