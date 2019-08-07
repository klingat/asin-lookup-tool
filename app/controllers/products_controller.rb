class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_asin(params[:asin])
  end

  def new
    @product = Product.new
  end

  def create
    binding.pry
    @product = Product.create(product_params)

    if @product.save
      redirect_to @product
    else
      redirect_to :new
    end

  end

  private
  
  def product_params
    params.require(:product).permit(
      :asin,
      :category,
      :rank,
      :dimensions
    )
  end
end