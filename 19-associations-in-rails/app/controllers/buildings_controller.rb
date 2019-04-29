class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
    @architects = Architect.all
  end

  def create
    p params
    @building = Building.new(building_params)
    if @building.save
      redirect_to buildings_path
    else
      render :new
    end
  end

  private

  def building_params
    params.require(:building).permit(:name,:address,:year,:architect_id)
  end
end
