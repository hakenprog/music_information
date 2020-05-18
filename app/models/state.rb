class State < ApplicationRecord
  #validations
  validates :nombre, presence: true 
  #relations
  has_many :artists , dependent: :destroy
end
