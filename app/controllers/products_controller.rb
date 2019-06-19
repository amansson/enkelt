class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.search_by_name_and_description(params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def guide
    product = Product.find(params[:id])
    @pictures = product.all_guide_pictures
  end

  def inspiration
    product = Product.find(params[:id])
    @inspirations = product.all_inspiration_pictures
  end

  def mark_as_assembled
    @product = Product.find(params[:id])
    # @mark_as_assembled = UserProduct.new(marked_params)
    # @mark_as_assembled.product = @product
    # @mark_as_assembled.user = current_user
    # @mark_as_assembled.save
    # redirect_to products_inspiration_path(@review.product_id)
  end

  def set_mark_as_assembled
    # raise
    @mark_product = Product.find(params[:id])
    @mark_product.user_products[0].assembled = true
    @mark_product.user_products[0].save
  end

  private

  def marked_params
    params.require(:userproducts).permit(:assembled)
  end
end
