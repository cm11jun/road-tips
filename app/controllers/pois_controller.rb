class PoisController < ApplicationController

  def index
    @poi = Poi.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude
      }
    end
  end

  def show
    @poi = Poi.find(params[:id])
  end

  private

  def poi_params
    params.require(:poi).permit(:name, :category, :description, :address, photos: [])
  end
end
