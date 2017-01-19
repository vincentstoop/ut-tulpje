class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @page.save
      redirect_to @page
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end    

  private

  def product_params
    params.require(:product).permit(:name, :description, :reference_number, :image_url, :video_url, :availability, :price, :department)
  end
end
