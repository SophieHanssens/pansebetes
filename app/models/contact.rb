class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_categories

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
