class EventVenuesController < ApplicationController
  helper [:events, :event_categories, :event_venues]
  
  def show
    @event_venue = EventVenue.find(params[:id])
    @event_venues = EventVenue.all
    @other_events = Event.live.limit(5)
    # @events = @event_category.events.paginate({
    #       :page => params[:page],
    #       :per_page => RefinerySetting.find_or_set(:events_per_page, 10)
    #     })
    #     render :template => 'events/index'
  end
  
end