class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
