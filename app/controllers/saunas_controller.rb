class SaunasController < ApplicationController
  def index
  end

  def show
    @sauna = Sauna.find(params[:id])
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
