class ReviewsController < ApplicationController
  before_action :set_trip, only: [:create]
  # def new
  #   @trip = Trip.find(params[:trip_id])
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.trip = @trip
    @review.user = current_user
    if @review.save
      redirect_to trip_path(@trip)
    else
      render 'trip/show', status: :unprocessable_entity
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to trip_path(@review.trip), status: :see_other
  # end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
