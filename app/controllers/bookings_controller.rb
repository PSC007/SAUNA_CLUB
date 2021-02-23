class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @sauna = Sauna.find(params[:sauna_id])
    @booking.sauna = @sauna
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to saunas_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
