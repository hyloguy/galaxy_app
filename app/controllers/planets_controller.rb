class PlanetsController < ApplicationController

  def index
  	@planets = Planet.all
  end

  def new
  	@planet = Planet.new
  end

  def show
  	@planet = Planet.find(params[:id])
  end

  def edit
  end

  def create
  	@planet = Planet.new(planet_params)

  	if @planet.save
  		redirect_to planets_path
  	else
  		render 'new'
  	end
  end

  private

  def planet_params
  	params.require(:planet).permit(:name, :diameter)
  end

end
