class BookingsController < ApplicationController
  before_action :set_instructor, only: %i[show edit update new create]
  helper_method :time_slots

  def index
    @user = current_user
    if @user.instructor.present?
      @bookings = @user.instructor.bookings
    else
      @bookings = @user.bookings
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.instructor = @instructor

    if @booking.save
      redirect_to checkout_path, notice: "Booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
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
    params.require(:booking).permit(:date, :time, :instructor_id)
  end
end
