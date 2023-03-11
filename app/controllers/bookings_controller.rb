class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.trip = @trip
    if @booking.save
      redirect_to booking_path(@trip, @booking), notice: "Booking successful!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   if @booking.save
  #     redirect_to @booking
  #   else
  #     render 'new'
  #   end
  # end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :trip_id, :start_date, :end_date)
  end
end
