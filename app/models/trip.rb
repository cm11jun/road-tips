class Trip < ApplicationRecord
  validates :title, presence: true
  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :summary, length: { in: 10..1000 }
  validates :region, presence: true
  validates :day, presence: true

  belongs_to :user
  has_many :reviews
  has_many :trip_pois
  has_many :pois, through: :trip_pois
  has_many :bookings
  has_many_attached :photos

  acts_as_favoritable
  accepts_nested_attributes_for :trip_pois
  scope :trending, -> {
    joins(:bookings)
      .group('trips.id')
      .order(Arel.sql('COUNT(*) DESC'))
  }
end
