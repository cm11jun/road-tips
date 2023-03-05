class Poi < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: ["Fun roads", "Eats", "Sleeps", "Scenic roads", "Sights", "Landmarks", "Services"] }
  validates :description, length: { in: 4..1000 }
  validates :address, presence: true, uniqueness: true

  has_many :trip_pois
  has_many :trips, through: :trip_pois
  has_many_attached :photos
end
