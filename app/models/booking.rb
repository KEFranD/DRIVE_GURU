class Booking < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :teacher, class_name: 'User'
  has_many :reviews

  validates :date, presence: true
  validates :starting_time, presence: true
  validates :end_time, presence: true
end
