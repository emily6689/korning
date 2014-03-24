class Sale < ActiveRecord::Base
  has_many :invoices
  has_many :transactions
  has_many :products, through: :transactions
  belongs_to :employee
  belongs_to :customer
end
