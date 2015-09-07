class Contact < ActiveRecord::Base
  def self.add_contact(name,address,email,phone)
    Contact.create(name: name, address: address, email: email, phone: phone)
  end
end
