class User < ApplicationRecord
  has_many :reviews
  has_many :locations, through: :reviews
  has_many :event_users
  has_many :events, through: :event_users
  has_secure_password
  validates :username, uniqueness: true

  def self.search(search)
    where("name LIKE ? OR username LIKE ?", "%#{search}%", "%#{search}%")
  end

end
