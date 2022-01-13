class Itinerary < ApplicationRecord
  belongs_to :contact

  validates :contact_id, presence: true
end
