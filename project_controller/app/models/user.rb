class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    class_name: :Artwork,
    foreign_key: :artist_id

  has_many :favorite_artworks,
  class_name: :ArtworkShare,
  foreign_key: :viewer_id

  has_many :shared_artworks,
  through: :favorite_artworks,
  source: viewer:
end
