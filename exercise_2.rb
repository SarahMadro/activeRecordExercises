require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.where(id: 1).first
@store2 = Store.where(id: 2).first


@store1.update(name: "Vancouver")
