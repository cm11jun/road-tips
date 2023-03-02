class ReviewsController < ApplicationController
  before_action :set_trip, only: [:new, :create]
  def new
    @trip = Trip.find(params[:trip_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.trip = @trip
    @review.user = current_user
    if @review.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to trip_path(@review.trip), status: :see_other
  # end

  # def rating
  # end

  # def average
  #   values = @rating
  #   @average = values.sum / values.size.to_f
  # end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
