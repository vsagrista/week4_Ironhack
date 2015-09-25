class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
	has_many :products
	has_many :bids
	validates :name, :email, :password, presence: true
	validates :name,:email, length: { maximum: 500 }
	validates :email,:name, uniqueness: true
end
