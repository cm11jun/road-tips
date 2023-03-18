class ProfileController < ApplicationController
  before_action :find_user, only: [:show]
  def index
    @users = User.all
    @profiles = Profile.all
    @trips = Trip.all
  end

  def show
    @friend_booking = FriendBooking.new
    @profile = @user.profile
    @trips = @profile.trips
    # @bookings = Booking.where(user_id: params[:id])
  end

  def my_profile
    @profile = current_user.profile
    @trips = current_user.trips
    @friend_bookings = FriendBooking.where(user_id: current_user)
  end

  # def edit
  #   @profile = Profile.find(params[:id])
  # end

  # def update
  #   @profile = Profile.find(params[:id])
  #   if @profile.update(trip_params)
  #     redirect_to @profile, notice: "Profile updated!"
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @profile = Profile.find(params[:id])
  #   @profile.destroy!
  #   redirect_to profiles_path, status: :see_other
  # end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
