class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(params_review)
    @review.product = @product
    @review.user = current_user
    if @review.save
      flash[:success] = "Review was created successfully"
      redirect_to product_path(@review.product_id)
    else
      render :new
    end
  end

  # update number in the database

  def one_star
    @track.update_attributes(rating: 1)
  end

  def two_stars
    @track.update_attributes(rating: 2)
  end

  def three_stars
    @track.update_attributes(rating: 3)
  end

  def four_stars
    @track.update_attributes(rating: 4)
  end

  def five_stars
    @track.update_attributes(rating: 5)
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
