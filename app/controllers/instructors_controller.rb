class InstructorsController < ApplicationController
  before_action :set_instructor, only: %i[show edit update destroy]

  def show
    @instructor = Instructor.find(params[:id])
    # The `geocoded` scope filters only flats with coordinates
    @markers = []
    marker = {
      lat: @instructor.latitude,
      lng: @instructor.longitude
    }
    @markers << marker
    @bookings = @instructor.bookings if @instructor.bookings.present?
    @reviews = @bookings.map(&:review).compact unless @bookings.nil?
  end

  def index
    @instructors = Instructor.all
  if params[:query].present?
    @instructors = @instructors.where("address ILIKE ?", "%#{params[:query]}%")
  end
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.car_type = params[:instructor][:car_type].compact_blank
    @instructor.user = current_user
    if @instructor.save
      redirect_to instructors_path(@instructor), notice: "Instructor was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    # Code to update a specific instructor with the provided parameters
    if @instructor.update(instructor_params)
      redirect_to instructor_path(@instructor), notice: "Instructor was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # Code to delete a specific instructor
    @instructor.destroy
    redirect_to instructors_path, notice: "Instructor was successfully deleted."
  end

  private

  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:company_name, :car_type, :work_phone_number, :address, :user_id, :photo)
  end
end
