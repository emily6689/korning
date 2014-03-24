class PopulateForeignKeysSales < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      employee_array = sale.employee.split
      employee_match = Employee.find_by(email: employee_array[2].gsub("(", "").gsub(")", ""))

      sale.employee_id = employee_match.id
      sale.save
    end
  end
end
