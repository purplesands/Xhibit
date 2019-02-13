class EventUsersController < ApplicationController

  # def show
  #   @event_user = EventUser.find_by(params[:id])
  # end

  def create
    # byebug
    EventUser.find_or_create_by(event_id: params[:event_id], user_id: params[:user_id])
    redirect_to event_path(params[:event_id])
  end

  def destroy
    EventUser.find(params[:id]).destroy
    redirect_to user_path(session[:user_id])
  end

private
    def event_user_params
      params.require(:event_user).permit(:id, :user_id, :event_id)
    end

end
