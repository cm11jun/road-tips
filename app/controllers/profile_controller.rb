class ProfileController < ApplicationController
  # def index
  #   @profiles = Profile.all
  #   @trips = Trip.all
  # end

  def show
    @profile = current_user.profile
    @trips = current_user.trips
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
end
