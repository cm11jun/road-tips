class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @review = Review.new
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    # @trip.user = current_user
    if @trip.save
      redirect_to new_trip_path(@trip), notice: "Trip created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to @trip, notice: "Trip updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy!
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :start_point, :end_point, :region, :summary)
  end
end
