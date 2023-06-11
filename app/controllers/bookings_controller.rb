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
    @booking.car_transmission = @instructor.car_transmission
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.booker_id = current_user.id

    instructor = Instructor.find(params[:booking][:instructor_id])
    @booking.car_transmission = instructor.car_transmission

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
    params.require(:booking).permit(:date, :user_id, :time, :instructor_id)
  end

  def time_slots
    start_hour = 7
    end_hour = 17
    slot_duration = 1.hour
    slots = []

    (start_hour..end_hour).each do |hour|
      start_time = format('%02d:00', hour)
      end_time = format('%02d:00', hour + 1)
      slot_label = "#{start_time}-#{end_time}"
      slots << [slot_label, start_time]
    end

    slots
  end
end
