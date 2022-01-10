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
    @favorite = Favorite.new
    @contacts = Contact.all
    @favorite_old = Favorite.find_by(user_id: current_user.id, animal_id: params[:id])
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

  private

  def animal_params
    params.require(:animal).permit(:category_id, :name, :scientific_name, :color, :weight, :description, :photo)
  end

end
