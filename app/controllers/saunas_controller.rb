class SaunasController < ApplicationController
  before_action :find_sauna, only: [ :show, :edit, :update, :destroy ]

  def index
    @saunas = Sauna.all

    @markers = @saunas.geocoded.map do |sauna|
      {
        lat: sauna.latitude,
        lng: sauna.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { sauna: sauna }),
        image_url: helpers.asset_url('32x32.png')
      }

    end
  end

  def show
    @owner = @sauna.user
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
    @sauna.update(sauna_params)
    redirect_to sauna_path(@sauna)
  end

  def destroy
    @sauna.destroy
    redirect_to saunas_path
  end

  private

  def sauna_params
    params.require(:sauna).permit(:name, :photo, :description, :temperature, :seat, :address)
  end

  def find_sauna
    @sauna = Sauna.find(params[:id])
  end

end
