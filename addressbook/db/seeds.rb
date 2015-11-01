
10.times do |i|
	Contact.create(name: Faker::Name.name, address: Faker::Address.street_address, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone.to_i)
end
