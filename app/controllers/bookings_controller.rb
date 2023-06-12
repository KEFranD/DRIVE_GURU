class BookingsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]
  helper_method :time_slots

  def index
    @user = current_user
    @bookings = @user.user_bookings
  end

  def new
    @booking = Booking.new
    @instructor = Instructor.find(params[:instructor_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user


    @instructor = Instructor.find(params[:instructor_id])
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
