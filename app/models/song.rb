class Song < ApplicationRecord
  #validations
  validates :nombre, presence: true 
  #relations
  belongs_to :album
  has_many :colaborations
  has_many :artists , through: :colaborations
end
