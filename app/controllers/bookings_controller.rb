class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create]
  def new
    @user = User.new(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user

    if @booking.save
      return successful save
    else
      return failure
    end
  end

  private

  def set_user
    @user = user.find(params[:user_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :finish_time, :date)
  end
end
