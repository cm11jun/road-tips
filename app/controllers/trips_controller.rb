class TripsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR start_point ILIKE :query OR end_point ILIKE :query OR region ILIKE :query"
      @trips = Trip.where(sql_query, query: "%#{params[:query]}%")
    else
      @trips = Trip.all
    end

    @pois = Poi.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @pois.geocoded.map do |poi|
      {
        lat: poi.latitude,
        lng: poi.longitude,
        info_window: render_to_string(partial: "popup", locals: {poi: poi})
      }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @review = Review.new
    @booking = Booking.new
    @pois = Poi.where(id: @trip.waypoint.map(&:to_i))
    # iterate over the array and for each trip_poi, find the poi it belongs to
    # return an array of pois

    @start_coords = Geocoder.search(@trip.start_point).first.coordinates.reverse
    @end_coords = Geocoder.search(@trip.end_point).first.coordinates.reverse

    @pois_names = Poi.where(id: @trip.waypoint.map(&:to_i)).map(&:name)
    @waypoint1 = Geocoder.search(@pois_names[0]).first&.coordinates&.reverse || false
    @waypoint2 = Geocoder.search(@pois_names[1]).first&.coordinates&.reverse || false
    @waypoint3 = Geocoder.search(@pois_names[2]).first&.coordinates&.reverse || false
    @waypoint4 = Geocoder.search(@pois_names[3]).first&.coordinates&.reverse || false
    @waypoint5 = Geocoder.search(@pois_names[4]).first&.coordinates&.reverse || false
  end

  def new
    @trip = Trip.new
    @pois = Poi.all
  end

  def create
    @trip = Trip.new(trip_params)
    waypoint_ids = params["waypoint"].map { |id| id.to_i }
    @trip.waypoint = waypoint_ids
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip), notice: "Trip created!"
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
    params.require(:trip).permit(:title, :start_point, :end_point, :waypoint, :region, :summary, :day, photos: [])
  end
end
