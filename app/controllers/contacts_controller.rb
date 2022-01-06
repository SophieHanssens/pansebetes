class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @user = current_user

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @user = current_user.id
    @contact.user_id = @user
    if @contact.save!
      redirect_to contact_path(@contact)
    else
      render 'new'
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @user = current_user.id
    @contact.user_id = @user

    if @contact.update!(contact_params)
      redirect_to contact_path(@contact)
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:user_id, :name, :speciality, :phone_number, :street, :zipcode, :city, :country)
  end
end
