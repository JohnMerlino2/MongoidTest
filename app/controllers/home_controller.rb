class HomeController < ApplicationController
  def index
    unless User.first
      User.create
    end

    @shared_calendar = SharedCalendar.first
  end
end
