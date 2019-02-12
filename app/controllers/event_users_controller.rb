class EventUsersController < ApplicationController

  def create
    # byebug
    EventUser.create(event_id: params[:event_id], user_id: params[:user_id])
    redirect_to event_path(params[:event_id])
  end

end
