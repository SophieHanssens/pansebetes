class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @user = current_user
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
