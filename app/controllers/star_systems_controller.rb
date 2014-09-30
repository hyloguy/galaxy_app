class StarSystemsController < ApplicationController
  before_action :set_star_system, only: [:show, :edit, :update, :destroy]
  before_action :current_user

  # GET /star_systems
  # GET /star_systems.json
  def index
    @star_systems = StarSystem.all
  end

  # GET /star_systems/1
  # GET /star_systems/1.json
  def show
  end

  # GET /star_systems/new
  def new
    @star_system = StarSystem.new
  end

  # GET /star_systems/1/edit
  def edit
  end

  # POST /star_systems
  # POST /star_systems.json
  def create
    @star_system = StarSystem.new(star_system_params)

    respond_to do |format|
      if @star_system.save
        format.html { redirect_to @star_system, notice: 'Star system was successfully created.' }
        format.json { render :show, status: :created, location: @star_system }
      else
        format.html { render :new }
        format.json { render json: @star_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star_systems/1
  # PATCH/PUT /star_systems/1.json
  def update
    respond_to do |format|
      if @star_system.update(star_system_params)
        format.html { redirect_to @star_system, notice: 'Star system was successfully updated.' }
        format.json { render :show, status: :ok, location: @star_system }
      else
        format.html { render :edit }
        format.json { render json: @star_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star_systems/1
  # DELETE /star_systems/1.json
  def destroy
    @star_system.destroy
    respond_to do |format|
      format.html { redirect_to star_systems_url, notice: 'Star system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_system
      @star_system = StarSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def star_system_params
      params.require(:star_system).permit(:name)
    end
end
