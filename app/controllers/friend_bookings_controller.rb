class FriendBookingsController < ApplicationController

  def create
    @friend_booking = FriendBooking.new(friend_booking_params)
    @booking = params["friend_booking"]["booking_id"]
    @friend_booking.user_id = current_user.id
    if @friend_booking.save!
      redirect_to bookings_path, notice: "Trip saved!"
    else
      render root_path, status: :unprocessable_entity
    end
  end

  private

  def friend_booking_params
    params.require(:friend_booking).permit(:user_id, :booking_id)
  end
end
