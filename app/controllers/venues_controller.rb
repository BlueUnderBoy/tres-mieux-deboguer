class VenuesController < ApplicationController

  def index
    matching_venues = venue.all
    @venues = matching_venues.order(:created_at)

    render({ :template => "venue_templates/venue_list" })
  end

  def show
    venue_id = params.fetch("venue_id")
    matching_venues = Venue.where({ :id => venue_id }).at(0)
    @the_venue = matching_venues

    render({ :template => "venue_templates/details" })
  end

  def create
    @venue = Venue.new
    venue.address = params.fetch("address")
    venue.name = params.fetch("name")
    venue.neighborhood = params.fetch("neighborhood")
    venue.save

    redirect_to("/venues/#{venue.id}")
  end
  
  def update
    the_id = params.fetch("venue_id")

    @venue = Venue.where({ :id => the_id })
    venue.address = params.fetch("address")
    venue.name = params.fetch("name")
    venue.neighborhood = params.fetch("neighborhood")
    venue.save
    
    redirect_to("/venues/#{venue.id}")
  end

  def destroy
    the_id = params.fetch("venue_id")
    matching_venues = Venue.where({ :id => the_id })
    venue = matching_venues
    venue.destroy

    redirect_to("/venues")
  end

end
