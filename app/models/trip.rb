class Trip < ApplicationRecord
  # has_many trip_pois
  validates :title, presence: true
  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :summary, length: { in: 10..500 }
  validates :region, presence: true
end
