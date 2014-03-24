class Product < ActiveRecord::Base
  has_many :transactions
  has_many :sales, through: :transactions
end
