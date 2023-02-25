class Poi < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :type, inclusion: { in: ["technical/fun roads", "eats", "sleeps", "scenic roads", "landmarks"] }
  validates :description, length: { in: 16..100 }
end
