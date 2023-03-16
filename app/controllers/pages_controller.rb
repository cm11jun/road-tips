class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @trending_trips = Trip.trending.limit(4)
    @latest = Trip.all.last(4)
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :start_point, :end_point, :region, :summary, photos: [])
  end
end
