class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instructor
  has_one :review, dependent: :destroy

  attr_accessor :car_transmission
end
