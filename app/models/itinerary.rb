class Itinerary < ApplicationRecord
  belongs_to :contact
  belongs_to :user

  validates :contact_id, presence: true
end
