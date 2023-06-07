class Booking < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :date, presence: true
end
