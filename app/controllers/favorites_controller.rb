class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(trip: Trip.find(params[:trip]), user: current_user)
    if favorite == []
      Favorite.create(trip: Trip.find(params[:trip]), user: current_user)
      @favorite_exists = true
    else
      favourite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
