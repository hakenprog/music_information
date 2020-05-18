class Location < ApplicationRecord
  validates :city_id, presence: true
  validates :province_id, presence: true
  validates :country_id, presence: true

  belongs_to :city
  belongs_to :province
  belongs_to :country
end
