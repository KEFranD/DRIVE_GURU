class Booking < ApplicationRecord
  belongs_to :student_id
  belongs_to :teacher_id
end
