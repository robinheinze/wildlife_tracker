class SightingsController < ApplicationController
  def new
    @sighting = Sighting.new
    @species = Species.find(params[:id])

    render('sightings/new.html.erb')
  end
end
