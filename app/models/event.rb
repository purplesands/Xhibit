class Event < ApplicationRecord
  belongs_to :location
  has_many :event_users
  has_many :users, through: :event_users

  def days_left
    (self.end_date.to_date - DateTime.now.to_date).to_i
  end

  def format_date(date)
    date.strftime("%A, %B %d, %Y")
  end

end
