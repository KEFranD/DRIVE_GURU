class InstructorsController < ApplicationController
  def show
    @instructor = Instructor.find(params[:id])
    @instructors = Instructor.where(location: @instructor.address)
  end

  def index
    @instructors = Instructor.all
  if params[:query].present?
    @instructors = @instructors.where("address ILIKE ?", "%#{params[:query]}%")
  end
  end

end
