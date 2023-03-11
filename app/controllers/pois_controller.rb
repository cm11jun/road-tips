class PoisController < ApplicationController
  def index
    @pois = Poi.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude
      }
    end
  end
end
