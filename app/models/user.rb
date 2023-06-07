class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :student_bookings, class_name: 'Booking',
                              foreign_key: 'student_id'
  has_many :teacher_bookings, class_name: 'Booking',
                              foreign_key: 'teacher_id'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  # validates :teacher_role, presence: true
  # validates :car_transmission, presence: true
  # validates :location, presence: true
end
