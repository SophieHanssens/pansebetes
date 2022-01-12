class Animal < ApplicationRecord
  has_one_attached :photo
  belongs_to :category
  has_many :favorites
  has_many :itineraries

  validates :name, presence: true

  # include AlgoliaSearch

  # algoliasearch do
  #   # attributes :first_name, :last_name, :email
  # end

  # searchkick

  # PG SEARCH
  # include PgSearch::Model
  # multisearchable against: [:name, :color]
  # pg_search_scope :search_by_name_and_by_color,
  #   against: [ :name, :color ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
end
