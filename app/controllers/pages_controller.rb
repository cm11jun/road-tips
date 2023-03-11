class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @trips = Trip.all.limit(4)
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :start_point, :end_point, :region, :summary, photos: [])
  end
end
