class Colaboration < ApplicationRecord
  #validations
  validates :artist_id, presence: true
  validates :song_id, presence: true
  #relations
  belongs_to :artist
  belongs_to :song
end
