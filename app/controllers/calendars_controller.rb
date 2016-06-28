class CalendarsController < ApplicationController
  def callback
    CommunityCalendar.login_with_refresh_token(params[:code])
  end
end
