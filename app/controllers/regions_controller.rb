class RegionsController < ApplicationController

  # def index
  #   @regions = Region.all
  #   @region = Region.new
  #   render('regions/index.html.erb')
  # end

  def new
    @region = Region.new
    @regions = Region.all
    render('regions/new.html.erb')
  end

  def create
    @region = Region.new(params[:regions])
    if @region.save
      redirect_to :back
    else
      @regions = Region.all
      render('regions/index.html.erb')
    end
  end

  def show
    @region = Region.find(params[:id])
    @sightings = @region.sightings
    render('regions/show.html.erb')
  end

end
