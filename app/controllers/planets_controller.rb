class PlanetsController < ApplicationController

  def index
  	@planets = Planet.order(:name)
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

  def destroy
  	@planet = Planet.find(params[:id])
  	@planet.destroy
  	redirect_to planets_path
  end

  def copy
  	original = Planet.find(params[:id])
  	copy = Planet.new do |p|
  		p.name = original.name + " copy"
  		p.diameter = original.diameter
  	end
  	copy.save
  	redirect_to planets_path
  end

  private

  def planet_params
  	params.require(:planet).permit(:name, :diameter, :orbit, :star_system_id)
  end

end
