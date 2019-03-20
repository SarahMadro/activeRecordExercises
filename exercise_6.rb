require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Sarah", last_name: "Jane", hourly_rate: 100)
@store1.employees.create(first_name: "Fluffy", last_name: "Rabbit", hourly_rate: 200)
@store1.employees.create(first_name: "Curly", last_name: "fries", hourly_rate: 200)
# @store1.employees.create(first_name: "Cat", last_name: "fish").valid

@store2.employees.create(first_name: "Star", last_name: "Fish", hourly_rate: 180)
@store2.employees.create(first_name: "Brown", last_name: "Rice", hourly_rate: 120)
@store2.employees.create(first_name: "Popsicle", last_name: "Stick", hourly_rate: 50)

puts "Store 2 has #{@store1.employees.count} employees"
puts "Store 2 has #{@store2.employees.count} employees"

@store1.employees.create(first_name: "lettuce").valid?