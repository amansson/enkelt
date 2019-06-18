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
      # redirect_to product_path(@review.product_id)
      redirect_to products_inspiration_path(@review.produtch_id)
    else
      render :new
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
