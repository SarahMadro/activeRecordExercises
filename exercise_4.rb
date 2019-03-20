require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletwon = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do | stores |
  puts "#{stores.name} store with #{stores.annual_revenue} in revenue"
end

puts @mens_stores

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue <  ?", 1000000)

@womens_stores.each do | stores |
  puts "#{stores.name} sells $#{stores.annual_revenue} which is
  $#{1000000 - stores.annual_revenue} less than the expected revenue of $1,000,000"
end