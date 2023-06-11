class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def checkout
    if request.post?
      @booking = Booking.new(booking_params)
      @booking.save

      redirect_to booking_confirmation_path(@booking)
    else
      @booking = Booking.new
    end
  end
end
