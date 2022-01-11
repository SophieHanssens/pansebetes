class AnimalsController < ApplicationController
  def index
    @categories = Category.all
    @animals = Animal.all
    @category = Category.find_by(name: params[:category])
    if @category.present?
      @animals = @animals.joins(:category).where(categories: { name: @category.name })
    end
    if params[:name].present?
      sql_query = "name ILIKE :name"
      @animals = Animal.where(sql_query, name: "%#{params[:name]}%")
    end
    if params[:color].present?
      sql_query = "color ILIKE :color"
      @animals = @animals.where(sql_query, color: "%#{params[:color]}%")
    end
  end

  def show
    @animal = Animal.find(params[:id])
    @favorite = Favorite.new
    @contacts = Contact.all
    @favorite_old = Favorite.find_by(user_id: current_user.id, animal_id: params[:id])
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
