class Genre < ApplicationRecord
	#validations
  	validates :nombre, presence: true 
  	#relations
	has_many :genre_artists
	has_many :artists ,through: :genre_artists
	has_many :genre_albums
	has_many :albums ,through: :genre_albums
end
