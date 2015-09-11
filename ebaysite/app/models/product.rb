class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	
	validates :title, :description,:deadline, presence: true
	validates :description, length: { maximum: 2000 }
	validates :title, length: { maximum: 100 }
	validates :title,:description, uniqueness: true

end

