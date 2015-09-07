class ContactsController < ApplicationController
  def index
  	@contacts = Contact.all.sort{|a,b| a <=> b}
  end
  def show
		id = params[:id]
		@current_user = Contact.find(id)
  end  
end
