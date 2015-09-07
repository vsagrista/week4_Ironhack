class ContactsController < ApplicationController
  def index
  	@contacts = Contact.all.sort{|a,b| a <=> b}
  end
end
