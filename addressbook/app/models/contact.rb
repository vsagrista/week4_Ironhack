class Contact < ActiveRecord::Base
  validates :name, :email, :address, :phone, presence: true
  validates :name, :email, length: {maximum: 50}
  validates :phone, numericality: {only_integer: true}
end
