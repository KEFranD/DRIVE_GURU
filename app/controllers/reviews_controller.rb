class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_booking, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    @review.booking = @booking
    if @review.save
      redirect_to instructor_path(@booking.instructor), notice: "Review was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to booking_path(@review.booking_id), notice: "Review was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to booking_path(@review.booking_id), notice: "Review was successfully deleted."
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
