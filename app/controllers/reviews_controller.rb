class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.find(params[:review_id])

    if @review.save
      flash[:success] = "Review was created successfully"
      redirect_to product_path(params[:id])
    else
      render '/'
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content, :product_id, :user_id)
  end
end
