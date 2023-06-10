class BookingsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  def index
    # Code to fetch and display all bookings
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
    @instructor = Instructor.find(params[:instructor_id])
  end

  def create
    # Code to create a new booking with the provided parameters
    @booking = Booking.new(booking_params)
    @booking.booker_id = current_user.id

    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # Code to fetch and display a specific booking
  end

  def edit
    # Code to edit a specific booking
  end

  def update
    # Code to update a specific booking with the provided parameters
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # Code to delete a specific booking
    @booking.destroy
    redirect_to bookings_path, notice: "Booking was successfully deleted."
  end

  private
  def format_duration(duration)
    hours, minutes = duration.split('h')
    "#{hours.to_i} hours #{minutes.to_i} minutes"
  end

  def set_instructor
    @instructor = Instructor.find(params[:instructor_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :user_id, :time, :instructor_id)
  end
end
