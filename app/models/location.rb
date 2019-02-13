class Location < ApplicationRecord
  belongs_to :location_type
  has_many :reviews
  has_many :users, through: :reviews
  has_many :events
  attr_writer :overall_rating

  def overall_rating
    ratings = []
    self.reviews.map do |review|
      ratings << review.rating
    end
    ovr = ratings.inject(0, :+).to_f/ratings.count.to_f
    ovr = ovr.to_s
    if ovr == "NaN"
      ovr = "Not Rated"
    else
      ovr.to_f.round(2).to_s
    end
  end


  def self.search(search)
    where("name LIKE ? OR neighborhood LIKE ?", "%#{search}%", "%#{search}%")
  end


end
