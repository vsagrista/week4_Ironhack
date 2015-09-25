class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	
	validates :title, :description, :deadline, :min_bid, presence: true
	validates :description, length: { maximum: 2000 }
	validates :title, length: { maximum: 100 }
	validates :description, uniqueness: true
	
end

