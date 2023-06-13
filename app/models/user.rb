class User < ApplicationRecord
  # Bookings made by this user
  has_many :bookings

  # Bookings received by this user

  # Reviews written by this user
  has_many :reviews

  # Messages sent by this user
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'

  # Messages received by this user
  has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message'

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
