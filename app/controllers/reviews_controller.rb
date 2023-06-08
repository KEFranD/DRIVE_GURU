class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    # Code to create a new review instance
    @review = Review.new
  end

  def create
    # Code to create a new review with the provided parameters
    @review = Review.new(review_params)
    if @review.save
      redirect_to booking_path(@review.booking_id), notice: "Review was successfully created."
    else
      render :new
    end
  end

  def edit
    # Code to edit a specific review
  end

  def update
    # Code to update a specific review with the provided parameters
    if @review.update(review_params)
      redirect_to booking_path(@review.booking_id), notice: "Review was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    # Code to delete a specific review
    @review.destroy
    redirect_to booking_path(@review.booking_id), notice: "Review was successfully deleted."
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :description, :booking_id)
  end
end
