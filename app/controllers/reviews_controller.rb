class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.instructor = @instructor
    if @review.save
      redirect_to instructor_path(@instructor)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to instructor_path(@review.instructor), status: :see_other
  end

  private

  def set_instructor
    @instructor = Instructor.find(params[:instructor_id])
  end

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
