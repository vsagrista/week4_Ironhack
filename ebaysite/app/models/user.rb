class User < ActiveRecord::Base
	has_many :products
	validates :name, :email, presence: true
	validates :name,:email, length: { maximum: 500 }
	validates :email,:name, uniqueness: true
end
