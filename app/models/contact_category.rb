class ContactCategory < ApplicationRecord
  belongs_to :category
  belongs_to :contact

  validates :category_id, uniqueness: { scope: :contact_id }
end
