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

  end

  def favorites
    @contact.state = true
    @contact.save
    @contacts = Contact.all
    render :favorites
  end

  def find_contacts
    @contacts = Contact.all
    @letter = params[:character]
    render :find_contact
  end

  private
  def contact_params
    params.require(:contact).permit(:name,:address,:email,:phone)
  end
end
