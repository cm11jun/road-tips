class Trip < ApplicationRecord
  validates :title, presence: true
  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :summary, length: { in: 10..500 }
  validates :region, presence: true

  has_many :reviews
  has_many :trip_pois
  has_many :pois, through: :trip_pois
  has_many_attached :photos

  acts_as_favoritable
end
