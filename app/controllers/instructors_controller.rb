class InstructorsController < ApplicationController
  def show
    # The `geocoded` scope filters only flats with coordinates
    @markers = []
    marker = {
      lat: @instructor.latitude,
      lng: @instructor.longitude
    }
    @markers << marker
  end
end
