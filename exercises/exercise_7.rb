require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

Store.create(name: "TO", annual_revenue: "500000", mens_apparel: "true", womens_apparel: "false")
Store.create(name: "Coal Harbour", annual_revenue: "10", mens_apparel: "false", womens_apparel: "false")

puts "Let's create a new store! What's it called?"
tmp_store_name = gets.chomp
tmp_store = Store.create(name: tmp_store_name)
puts tmp_store.errors.full_messages

