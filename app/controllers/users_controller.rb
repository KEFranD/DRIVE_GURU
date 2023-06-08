class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  # The `geocoded` scope filters only flats with coordinates
    @markers = []
    marker = {
      lat: @user.latitude,
      lng: @user.longitude
    }
    @markers << marker
  end
end
