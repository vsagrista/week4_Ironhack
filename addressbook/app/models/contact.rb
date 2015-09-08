class Contact < ActiveRecord::Base
	
	validates :name, :email, :address, :phone, presence: true
	validates :name, :email, length: {maximum: 50}
	validates :name, :email, :address, :phone, uniqueness: true
	validates :name, :address, format: {with: /\A[0-9a-zA-Z ]+\z/}


	validates :phone, length: {maximum: 14}
	validates :phone, numericality: {only_integer: true}

	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

end


