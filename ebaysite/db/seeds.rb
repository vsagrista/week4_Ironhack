# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bid.destroy_all
Product.destroy_all
User.destroy_all

10.times do |i|
	user = User.new
	user.name = Faker::Name.name
	user.email = Faker::Internet.email
	user.save
end