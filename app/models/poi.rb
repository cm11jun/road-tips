class Poi < ApplicationRecord
  has_many :trip_pois
  validates :name, presence: true, uniqueness: true
  validates :type, inclusion: { in: ["technical/fun roads", "eats", "sleeps", "scenic roads", "landmarks", "services"] }
  validates :description, length: { in: 16..256 }
  validates :address, presence: true, uniqueness: true
end
