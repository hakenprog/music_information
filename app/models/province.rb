class Province < ApplicationRecord
  #validations
  validates :nombre, presence: true 
  #relations
  belongs_to :country
  has_many :cities , dependent: :destroy

end
