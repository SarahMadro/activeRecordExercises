require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Total annual revenue for all stores: $#{Store.sum(:annual_revenue)}"
# puts Store.count
puts "The average annual revenue for all stores is: $#{Store.sum(:annual_revenue) / 5 }"
# puts "The average annual revenue for all stores is: $#{Store.sum(:annual_revenue) / Store.all.count }"
puts "The number of stores with revenue over $1,000,000 is #{Store.where("annual_revenue > ?", 1000000).count}"
