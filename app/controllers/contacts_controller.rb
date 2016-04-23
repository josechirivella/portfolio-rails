class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to home_path, success: 'You have successfully created.'
    else
      render :new
    end
  end

  def show
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
