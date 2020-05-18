class Country < ApplicationRecord
	#Validations
	validates :nombre , presence: true
	#Relations
	has_many :provinces , dependent: :destroy
	has_many :locations , dependent: :destroy
end
