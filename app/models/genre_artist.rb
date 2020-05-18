class GenreArtist < ApplicationRecord
  validates :artist_id, presence: true
  validates :genre_id, presence: true

  belongs_to :artist
  belongs_to :genre
end
