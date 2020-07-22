class Artist < ApplicationRecord
  #validations
  validates :nombre, presence: true
  validates :descripcion, presence: true

  #relations
  belongs_to :location
  belongs_to :state
  has_and_belongs_to_many :albums
  has_many :genre_artists , dependent: :destroy
  has_many :genres , through: :genre_artists, dependent: :destroy
  has_many :songs , through: :albums, dependent: :destroy
end
