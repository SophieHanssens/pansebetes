class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @animals = Animal.all
    @contacts = Contact.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @contacts.geocoded.map do |contact|
      {
        lat: contact.latitude,
        lng: contact.longitude,
        info_window: render_to_string(partial: "info_window", locals: { contact: contact })
      }
    end
  end

  def dashboard
    @favorites = Favorite.all
  end

end
