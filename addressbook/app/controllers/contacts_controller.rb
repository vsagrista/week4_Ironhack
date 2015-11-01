class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.sort{|a,b| a <=> b}
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to("/contacts/#{@contact.id}")
    else
      render :new
    end
  end

  def make_favorite
    Contact.make_favorite(params[:id])
    redirect_to root_path
  end

  def unfavor_contact
    Contact.unfavor_contact(params[:id])
    redirect_to root_path
  end


  def find_contacts
    @contacts = Contact.find_contact(params[:character])
    render :found_contacts
  end

  private
  def contact_params
    params.require(:contact).permit(:name,:address,:email,:phone)
  end
end
