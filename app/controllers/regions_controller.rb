class RegionsController < ApplicationController

  def index
    @regions = Region.all
    @region = Region.new
    render('regions/index.html.erb')
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

end
