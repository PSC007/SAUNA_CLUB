class ReviewsController < ApplicationController
  def new
    # we need @sauna in our `simple_form_for` ???
    @sauna = Sauna.find(params[:sauna_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @sauna = Sauna.find(params[:sauna_id])
    @review.sauna = @sauna
    if @review.save
      redirect_to sauna_path(@sauna)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    # @sauna = Sauna.find(params[:sauna_id])
    # @review.sauna = @sauna
    @review.destroy
    redirect_to saunas_path
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
