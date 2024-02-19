class BeersController < ApplicationController
  def index
    @beers = Beer.where("name LIKE ?", "%#{params[:query]}%")
  end

  def show
    @beer = Beer.find(params[:id])
    @brewery = @beer.brewery
  end
end
