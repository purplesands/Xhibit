class Location < ApplicationRecord
  belongs_to :location_type
  has_many :reviews
  has_many :users, through: :reviews
end
