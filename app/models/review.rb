class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = 0..5

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5 }
end
