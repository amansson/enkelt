class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.search_by_name_and_description(params[:query])
    else
      @products = Product.all
    end

    user_products = current_user.user_products
    @not_assembled = user_products.where(:assembled =>  false)
  end

  def show
    @product = Product.find(params[:id])
  end

  def guide
    @product = Product.find(params[:id])
    @pictures = @product.all_guide_pictures
  end

  def inspiration
    product = Product.find(params[:id])
    @inspirations = product.all_inspiration_pictures
  end

  def mark_as_assembled
    @product = Product.find(params[:id])
  end

  def set_mark_as_assembled
    @mark_product = Product.find(params[:id])
    @mark_product.user_products[0].assembled = true
    @mark_product.user_products[0].save
  end

  private

  def marked_params
    params.require(:userproducts).permit(:assembled)
  end
end
