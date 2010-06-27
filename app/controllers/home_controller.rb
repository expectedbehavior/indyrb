class HomeController < ApplicationController

  def index
    @meetup = MeetupEvent.find_next_event
    render :layout => "application"
  end

end
