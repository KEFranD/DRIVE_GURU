class Booking < ApplicationRecord
  belongs_to :booker, class_name: 'User', foreign_key: 'user_id'
  belongs_to :booked_user, class_name: 'User', foreign_key: 'booked_user_id'
  has_one :review

  validates :booker, presence: true
  validates :booked_user, presence: true
end
