class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create
    @favorite = Favorite.new(favorite_params)

    @favorite_old = Favorite.find_by(favorite_params)
    if @favorite_old.present?
      @favorite_old.destroy!
    else
      @favorite.save!
    end
    respond_to do |format|
      format.json { render json: @favorite }
      format.js
    end

  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :animal_id)
  end

end
