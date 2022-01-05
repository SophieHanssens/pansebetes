class AnimalsController < ApplicationController

  def index
    if params[:search].present?
      @animals = Animal.where('name ILIKE ?', "%#{params[:search][:animal]}%")
    else
      @animals = Animal.all
    end
  end

  def show

  end
end
