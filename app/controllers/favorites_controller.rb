class FavoritesController < ApplicationController
  def index
    console
    @favorites = Favorite.all
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
      respond_to do |format|
          format.js
        end
      end
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



    # @contacts = Contact.all
    # @animal = Animal.find(params[:id])
    # favorites = Favorite.all
    # favorites.each do |favorite|
    #   favorite_new = Favorite.new(user_id: current_user.id, animal_id: params[:id])
    #   if favorite_new.user_id != favorite.user_id || favorite_new.animal_id != favorite.animal_id
    #     favorite_new.save!
    #   end
    # end
  #   favorite = Favorite.find_by(user_id: current_user.id, animal_id: params[:id])
  #   if favorite.present?
  #     favorite.destroy!
  #   else
  #     favorite_new = Favorite.new(user_id: current_user.id, animal_id: params[:id])
  #     favorite_new.save!
  #   end
  #   redirect_to animal_path(@animal)
  # end

end
