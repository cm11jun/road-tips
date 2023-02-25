class TripPoi < ApplicationRecord
  belongs_to :trip
  belongs_to :poi
end
