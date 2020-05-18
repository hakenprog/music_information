class Artist < ApplicationRecord
  #validations
  validates :nombre, presence: true
  validates :descripcion, presence: true

  #relations
  belongs_to :location
  belongs_to :state
  has_many :genre_artists , dependent: :destroy
  has_many :genres , through: :genre_artists, dependent: :destroy
  has_many :artist_albums , dependent: :destroy
  has_many :albums , through: :artist_albums, dependent: :destroy
  has_many :songs , through: :albums, dependent: :destroy
end
