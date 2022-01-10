class AnimalsController < ApplicationController
  def index
    if params[:search].present?
      @animals = Animal.where('name ILIKE ?', "%#{params[:search][:animal]}%")
    else
      @animals = Animal.all
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @contacts = Contact.all
    @description = markdown_to_html(@animal.description)
  end

  def new
    if current_user.admin?
      @animal = Animal.new
      @categories = Category.all
    else
      redirect_to "/"
    end
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save!
      redirect_to animal_path(@animal)
    else
      render "new"
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    # @user = current_user.id
    # @contact.user_id = @user

    if @animal.update!(animal_params)
      redirect_to animal_path(@animal)
    else
      render 'edit'
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:category_id, :name, :scientific_name, :color, :weight, :description, :photo)
  end

end
