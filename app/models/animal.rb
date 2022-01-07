class Animal < ApplicationRecord
  has_one_attached :photo
  belongs_to :category

  validates :name, presence: true
end
