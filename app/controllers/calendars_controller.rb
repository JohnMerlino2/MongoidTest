class CalendarsController < ApplicationController
  def create
    @calendar = SharedCalendar.new calendar_params
    @calendar.users.push User.first
    @calendar.save
    redirect_to root_path
  end

  def calendar_params
    params.require(params[:type].underscore.to_sym).permit(:name)
  end
end
