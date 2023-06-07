class Booking < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :date, presence: true
  validates :starting_time, presence: true
  validates :end_time, presence: true
end
