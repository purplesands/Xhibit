class EventUsersController < ApplicationController
  #
  # def new
  #   @event_user = EventUser.new
  # end

  def create
    # byebug
    EventUser.find_or_create_by(event_id: params[:event_id], user_id: params[:user_id])
    redirect_to event_path(params[:event_id])
  end




end
