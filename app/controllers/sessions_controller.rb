class SessionsController < ApplicationController

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    @session.user = @session
    if @session.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    @session.update(params[:session])
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to user_path(@session.user), status: :see_other
  end

  private

  def session_params
    params.require(:session).permit(:car_transmission, :time)
  end
end
