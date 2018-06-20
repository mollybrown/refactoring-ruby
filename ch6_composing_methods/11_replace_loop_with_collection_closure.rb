# You are processing the elements of a collection in a loop =>
# Replace the loop with a collection closure method.

managers = []
employees.each do |employee|
  managers << employee if employee.manager?
end

offices = []
employees.each do |employee|
  offices << employee.office
end

managerOffices = []
employees.each do |employee|
  managerOffices << employee.office if employee.manager?
end

total = 0
employees.each do |employee|
  total += employee.salary
end

####################

managers = employees.select{ |employee| employee.manager? }

offices = employees.collect{ |employee| employee.office }

managerOffices = employees.select{ |employee| employee.manager? }.collect{ |employee| employee.office }

total = employees.inject(0) { |sum, employee| sum + employee.salary }
