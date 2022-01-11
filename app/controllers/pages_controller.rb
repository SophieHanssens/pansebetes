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
    @categories = Category.all
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

  def dashboard
    @favorites = Favorite.all
  end

end
