class PopulateSalesForeignIdInvoice < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      Invoice.where(invoice_num: sale.invoice_no.to_i).take.update({sale_id: sale.id})
    end
  end
end
