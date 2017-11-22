class EventsController < ApplicationController
    def index
        @event = Event.all
        @future = @event.upcoming_events
        @past = @event.past_events
    end

    def show
        @event = Event.find(params[:id])
        @attendees = @event.attendees
    end 

    def new
        @event = current_user.events.new
    end 

    def create
        @event = current_user.events.new(event_params)
        if @event.save
            flash[:info] = "Event created"
            redirect_to events_path
        else 
            flash[:info] = "Something went wrong."
            redirect_to new_event_path
        end 
    end 

    private

    def event_params
        params.require(:event).permit(:title, :location, :date, :description )
    end
end
