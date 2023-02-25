class Trip < ApplicationRecord
  validates :title, presence: true
  validates :start_point, presence: true
  validates :end_point, presence: true
  validates :summary, length: { in: 16..100 }
  validates :region, presence: true
end
