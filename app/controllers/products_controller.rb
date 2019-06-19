class ProductsController < ApplicationController

  def index
    if params[:query].present?
      @products = Product.search_by_name_and_description(params[:query])
      @search = true
    elsif params[:query].empty?
      @products = Product.all
      @search = true
    else
      @search = false
    end

    user_products = current_user.user_products
    @not_assembled = user_products.where(:assembled =>  false)
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

end
