class InstructorsController < ApplicationController
  def show
    @instructor = Instructor.find(params[:id])
    # The `geocoded` scope filters only flats with coordinates
    # @markers = []
    # marker = {
    #   lat: @user.latitude,
    #   lng: @user.longitude
    # }
    # @markers << marker
  end

  def index
    @instructors = Instructor.all
  if params[:query].present?
    @instructors = @instructors.where("address ILIKE ?", "%#{params[:query]}%")
  end
  end

end
