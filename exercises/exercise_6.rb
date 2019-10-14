require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 20)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 22)
@store1.employees.create(first_name: "Jane", hourly_rate: 32)
@store1.employees.create(first_name: "Sherlock", last_name: "Holmes", hourly_rate: 88)
@store1.employees.create(first_name: "John", last_name: "Watson", hourly_rate: 54)
@store2.employees.create(first_name: "Jack", last_name: "Sparrow", hourly_rate: 60)
Employee.create(store_id: 2, first_name: "Jesse", last_name: "Pinkman", hourly_rate: 60)
Employee.create(first_name: "James", last_name: "McGill", hourly_rate: 60)


