class ItinerariesController < ApplicationController
  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.save!
    # @contact = @itinerary.contact
    # redirect_to contact_path(@contact)

    respond_to do |format|
      format.js
    end
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:animal_name, :contact_id)
  end
end
