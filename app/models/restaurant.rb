class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "only accept chinese, italian, japanese, french, belgian" }

  def average_rating
    return '-' if self.reviews.empty?

    ratings = self.reviews.map { |review| review.rating }
    return (ratings.sum / ratings.length.to_f).round(1)
  end
end
