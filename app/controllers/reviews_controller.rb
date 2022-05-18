class ReviewsController < ApplicationController
  before_action :select_rest, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save!
    redirect_to restaurant_path(@restaurant)
  end

  private

  def select_rest
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
