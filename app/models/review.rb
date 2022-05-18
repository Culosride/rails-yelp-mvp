class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { in: 0..5 }

  RATING_VALUES = (0..5).to_a.freeze
end
