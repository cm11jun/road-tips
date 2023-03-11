class User < ApplicationRecord
  has_many :trips
  has_many :reviews

  has_one :profile

  has_one_attached :avatar
  has_one_attached :car_photo

  acts_as_favoritor

  # validates :username, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
