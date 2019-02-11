class Location < ApplicationRecord
  belongs_to :location_type
  has_many :reviews
  has_many :users, through: :reviews
  has_many :events

  def overall_rating
    ratings = []
    self.reviews.map do |review|
      ratings << review.rating
    end
    ovr = ratings.inject(0, :+).to_f/ratings.count.to_f
    ovr.round(2)
  end




end
