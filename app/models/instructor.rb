class Instructor < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :car_transmission, presence: true
  validates :location, presence: true
end
