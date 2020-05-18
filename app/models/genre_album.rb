class GenreAlbum < ApplicationRecord
  validates :genre_id, presence: true
  validates :album_id, presence: true

  belongs_to :genre
  belongs_to :album
end
