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

  def self.sort_locations(params)
    # byebug
    @locations = Location.all
    if !!params[:search]
      @locations = Location.search(params[:search])
    elsif params[:option] == "neighborhood"
      @locations = Location.all.sort_by {|location| location.neighborhood}
    elsif params[:option] == "rating"
      @locations = Location.all.sort_by do |location|
        if location.overall_rating == "Not Rated"
          location.overall_rating= "0"
        else
        location.overall_rating
      end #end of do block
        end.reverse #end of if block
    elsif params[:option] == "category"
        @locations = Location.all.sort_by {|location| location.location_type.category}
    else
      @locations = Location.all
    end
  end

  def self.search(search)
    where("name LIKE ? OR neighborhood LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def stars
    arr = []
    if self.overall_rating != "Not Rated"
      self.overall_rating.to_i.times do
        arr << "⭐️"
      end
      arr.join
    else
      ""
    end
  end


end
