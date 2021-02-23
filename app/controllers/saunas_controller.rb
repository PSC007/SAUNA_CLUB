class SaunasController < ApplicationController
  def index
    @saunas = Sauna.all
  end

  def show
    @sauna = Sauna.find(params[:id])
    @sauna.user = current_user
    @booking = Booking.new
    @booking.sauna = @sauna
  end

  def new
    @sauna = Sauna.new
  end

  def create
    @sauna = Sauna.new(sauna_params)
    @sauna.user = current_user
    if @sauna.save
      redirect_to sauna_path(@sauna)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def sauna_params
    params.require(:sauna).permit(:photo, :description, :temperature, :seat)
  end

end
