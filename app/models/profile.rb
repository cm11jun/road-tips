class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  validates :bio, length: { maximum: 500 }

  has_many :trips, through: :user
end
