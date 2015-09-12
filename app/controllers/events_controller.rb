class EventsController < ApplicationController
  def new
    @event = Event.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_url, success: t('controllers.events.create.flash.success') }
      else
        format.html { render :new, alert: t('controllers.events.create.flash.alert') }
      end
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :start_at, :end_at, :organization_name)
    end
end
