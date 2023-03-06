class User < ApplicationRecord
  has_many :trips
  has_many :reviews

  has_one_attached :avatar

  acts_as_favoritor

  validates :username, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
