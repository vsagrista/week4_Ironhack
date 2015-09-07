class ContactsController < ApplicationController
  def index
  	@contacts = Contact.all.sort{|a,b| a <=> b}
  end
  def show
		id = params[:id]
		@current_user = Contact.find(id)
  end  
  def new
  	name = params[:name]
  	address = params[:address]
  	email = params[:email]
  	phone = params[:phone]
  	Contact.add_contact(name,address,email,phone)
  end
end
