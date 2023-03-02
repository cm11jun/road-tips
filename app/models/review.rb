class Review < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  validates :rating, presence: true
  validates :content, presence: true, length: { maximum: 500 }
end
