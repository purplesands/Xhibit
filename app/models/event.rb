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

  def find_event_user(user_id, event)
    EventUser.all.find_by(user_id: user_id, event_id: event.id)
  end

end
