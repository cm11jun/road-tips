class ProfilesController < ApplicationController
  def index
    @trips = current_user.trips
  end

  # display all created trips cards for current_user

  # display favorited trips by the user
end
