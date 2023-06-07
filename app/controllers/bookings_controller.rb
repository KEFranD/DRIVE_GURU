class BookingsController < ApplicaionController
  # before_action :set_bookings, only: %i[new create index show]
  before_action :set_users, only: %i[new create index show]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @user = User.find(params[:instructor_id])

    @booking.user = @user
    # @booking.instructor = @instructor

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  # def set_bookings
  #   @booking = Instructor.find(params[:_id])
  # end

  def booking_params
    params.require(:booking).permit(:start_time, :finish_time, :date)
  end
end
