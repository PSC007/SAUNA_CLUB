class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @sauna = Sauna.find(params[:sauna_id])
    @booking.sauna = @sauna
    if @booking.save
      redirect_to
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
