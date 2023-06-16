class User < ApplicationRecord
  # Bookings made by this user
  has_many :bookings, dependent: :destroy # , foreign_key: :booker_id, class_name: 'Booking'

  # Bookings received by this user
  # has_many :received_bookings, foreign_key: :booked_user_id, class_name: 'Booking'

  # Reviews written by this user
  has_many :reviews

  # Messages sent by this user
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'

  # Messages received by this user
  has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message'

  # has_many :user_bookings, class_name: 'Booking', foreign_key: 'user_id'

  has_one :instructor

  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end
end
