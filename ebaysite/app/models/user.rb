class User < ActiveRecord::Base
	has_many :products
	has_many :bids
	validates :name, :email, :password, presence: true
	validates :name,:email, length: { maximum: 500 }
	validates :email,:name, uniqueness: true
end
