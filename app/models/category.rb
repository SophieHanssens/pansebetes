class Category < ApplicationRecord
  has_many :animals
  has_many :contacts, through: :contact_categories
end
