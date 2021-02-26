class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :destroy, :accept, :reject]

  def index
    @my_bookings = Booking.all.where(user: current_user)
    @my_requests = Booking.all.select { |booking| booking.sauna.user == current_user }
  end

  def show
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
    @booking.destroy
    redirect_to saunas_path
  end

  def accept
    @booking.update(accepted: true)
    redirect_to bookings_path
  end

  def reject
    @booking.update(accepted: false)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
