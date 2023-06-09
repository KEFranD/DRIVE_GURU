class User < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # Bookings made by this user
  has_many :bookings, foreign_key: :booker_id, class_name: 'Booking'

  # Bookings received by this user
  has_many :received_bookings, foreign_key: :booked_user_id, class_name: 'Booking'

  # Reviews written by this user
  has_many :reviews

  # Messages sent by this user
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'

  # Messages received by this user
  has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end
end
