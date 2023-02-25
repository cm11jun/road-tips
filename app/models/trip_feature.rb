class TripFeature < ApplicationRecord
  belongs_to :feature
  belongs_to :trip
end
