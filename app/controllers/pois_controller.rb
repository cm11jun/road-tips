class PoisController < ApplicationController
  def index
    @pois = Poi.all
  end

  def show
    @poi = Poi.find(params[:id])
  end

  private

  def poi_params
    params.require(:poi).permit(:name, :type, :description, :address, photos: [])
  end
end
