class Animal < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  has_many :favorites

  validates :name, presence: true
end
