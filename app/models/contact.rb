class Contact < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :contact_categories

end
