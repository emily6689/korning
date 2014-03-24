class PopulateInvoiceTable < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      Invoice.find_or_create_by({invoice_num: sale.invoice_no})
    end
  end
end
