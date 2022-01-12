class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_categories
  has_many :categories, through: :contact_categories
  has_many :itineraries

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
