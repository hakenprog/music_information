class Album < ApplicationRecord
  belongs_to :album_type
  has_and_belongs_to_many :artists
  has_many :songs , dependent: :destroy
  has_many :artist_albums
  has_many :artist , through: :artist_albums
  has_many :genre_albums
  has_many :genres, through: :genre_albums
end
