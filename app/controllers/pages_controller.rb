class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @trips = Trip.all
    # @trending_trips = @trips.rand
  end

  # display all created trips cards for current_user

  # display favorited trips by the user

  private

  def trip_params
    params.require(:trip).permit(:title, :start_point, :end_point, :region, :summary, photos: [])
  end
end
