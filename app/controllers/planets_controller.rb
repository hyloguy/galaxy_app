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
  	@planet = Planet.find(params[:id])
  end

  def create
  	@planet = Planet.new(planet_params)

  	if @planet.save
  		redirect_to planets_path
  	else
  		render 'new'
  	end
  end

  def update
  	@planet = Planet.find(params[:id])

  	if @planet.update(planet_params)
  		redirect_to @planet
  	else
  		render 'edit'
  	end
  end

  private

  def planet_params
  	params.require(:planet).permit(:name, :diameter)
  end

end
