class ReviewsController < ApplicationController
  def new
    @reviews = Review.all
  end

  def create
    @review = Review.find(params[:review_id])

    if @review.save
      flash[:success] = "Review was created successfully"
      redirect_to product_path(@reviews)
    else
      render '/'
    end
  end
end
