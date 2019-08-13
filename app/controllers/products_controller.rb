class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_asin(params[:asin])

    redirect_to new_product_path unless @product
  end

  def new
    @product = Product.new
  end

  def create
    asin = product_params[:asin]

    if Product.where(:asin => asin).empty?
      new_product = Services::GetProductDetailsFromAsin.new({asin: asin})

      @product = Product.create({
        :asin => asin,
        :name => new_product.name,
        :category => new_product.category,
        :rank => new_product.rank,
        :dimensions => new_product.dimensions
      })

      redirect_to product_path(asin)
    else
      redirect_to product_path(asin)
    end
  end

  private
  
  def product_params
    params.require(:product).permit(
      :asin
    )
  end
end