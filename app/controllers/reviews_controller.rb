class ReviewsController < ApplicationController


def new
  @review = Review.new
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant_id = @restaurant.id
  if @review.save # returns true or false
    # yayyyyy you filled it out right
    redirect_to restaurant_path(@restaurant), status: :see_other
  else
    # nooooooo you made a mistake
    # show some red error messages
    render :new, status: :unprocessable_entity
  end
end



private

def review_params
  params.require(:review).permit(:content, :rating)
end
end
