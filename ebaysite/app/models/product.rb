class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	
	validates :title, :description, :deadline, :user_id, :min_bid, presence: true
	validates :description, length: { maximum: 2000 }
	validates :title, length: { maximum: 100 }
	validates :description, uniqueness: true
	

	def find_if_email_belongs_to_a_user(email)
		if  User.exists?(:email => email)
			true
		else 
			self.errors.add(:base, "This email doesn't belong to a user")
			false
		end
	end
end

