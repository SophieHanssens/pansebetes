class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @user = current_user
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @user = current_user.id
    @contact.users_id = @user
    if @contact.save!
      redirect_to contact_path(@contact)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def contact_params
    params.require(:contact).permit(:users_id, :name, :speciality, :phone_number, :street, :zipcode, :city, :country)
  end
end
