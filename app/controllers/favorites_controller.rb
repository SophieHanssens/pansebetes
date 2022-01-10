class FavoritesController < ApplicationController

    def index
      @favorites = Favorite.all
    end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create
    favorite = Favorite.new(user_id: current_user.id, animal_id: params[:id])
    favorite.save!
  end

end
