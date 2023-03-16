class Poi < ApplicationRecord
  geocoded_by :address
  has_many :trip_pois
  has_many :trips, :through => :trip_pois
  after_validation :geocode, if: :will_save_change_to_address?
end
