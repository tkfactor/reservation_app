class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image

  has_many:rooms
  has_many:reservations

  validates :name, presence: true
  validates :user_introduction, presence: true, length: {maximum: 100}
  validates :image, presence: true
end
