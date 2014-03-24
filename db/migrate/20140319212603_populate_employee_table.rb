class PopulateEmployeeTable < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      employee_array = sale.employee.split
      Employee.find_or_create_by({first_name: employee_array[0], last_name: employee_array[1], email: employee_array[2].gsub("(", "").gsub(")", "")})
    end
  end
end



Employee
name first_name last_name
