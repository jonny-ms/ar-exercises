require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

Employee.create(store_id: 2, first_name: "Walter", last_name: "White", hourly_rate: 120)
new_employee = Employee.find_by(last_name: "White")
puts new_employee.password