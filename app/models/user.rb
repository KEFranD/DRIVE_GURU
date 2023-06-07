class User < ApplicationRecord
  has_many :bookings
  has_many :messages
  has_many :reviews, through: :bookings

  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
