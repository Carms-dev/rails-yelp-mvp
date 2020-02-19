class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a, message: "must be numbers between 0 and 5" }, numericality: { only_integer: true }

end
