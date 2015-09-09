# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all
Entry.destroy_all
5.times do |i|
	p = Project.new
	p.title = Faker::Address.country
	p.description = Faker::Company.buzzword
	p.save
	p.entries.create(minutes: rand(1..60), hours: rand(1..23), comments: "A new entry", date: Date.current)	
end
