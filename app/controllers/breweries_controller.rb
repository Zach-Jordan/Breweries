class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.where("name LIKE ?", "%#{params[:query]}%")
  end

  def show
    @brewery = Brewery.find(params[:id])
    @beers = @brewery.beers
  end
end
