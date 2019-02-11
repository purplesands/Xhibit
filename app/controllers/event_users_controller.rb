class EventUsersController < ApplicationController
  #
  # def new
  #   @event_user = EventUser.new
  # end

  def create
    byebug
    EventUser.create(event_id: params[:event_id], user_id: params[:user_id])
  end




end
