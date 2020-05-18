class City < ApplicationRecord
  #validations
  validates :nombre, presence: true 
  #relations
  belongs_to :province
  has_many :locations , dependent: :destroy

end
