class Session < ApplicationRecord
  belongs_to :booking

  validates :car_transmission, presence: true
  validates :time, presence: true
end
