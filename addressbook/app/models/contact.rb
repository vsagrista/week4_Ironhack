class Contact < ActiveRecord::Base
  validates :name, :email, :address, :phone, presence: true
  validates :name, :email, length: {maximum: 50}
  validates :phone, numericality: {only_integer: true}

  def self.find_contact(letter)
  	Contact.where('substr(name, 1, 1) = ? OR substr(name, 1, 1) = ?', letter.upcase, letter.downcase)
  end

  def self.make_favorite(id)
  	Contact.find(id).update(state: true)
  end

  def self.unfavor_contact(id)
  	Contact.find(id).update(state: false)
  end

end
