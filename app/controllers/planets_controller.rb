class PlanetsController < ApplicationController

  def index
  	@planets = Planet.all
  end

  def new
  end

  def show
  	@planet = Planet.find(params[:id])
  end

  def edit
  end

  def create
  	@planet = Planet.create(planet_params)
  	redirect_to planets_path
  end

  private

  def planet_params
  	params.require(:planet).permit(:name, :diameter)
  end

end
