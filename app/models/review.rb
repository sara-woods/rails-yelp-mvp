class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: RATING
  validates :rating, numericality: { only_integer: true }
end
