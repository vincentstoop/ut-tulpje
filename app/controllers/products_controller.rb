class ProductsController < ApplicationController
  # before_action :set_product, only: [:show, :edit, :update]
  # before_action :authenticate_user!, except: [:show]

  def index
    @products = Product.all.order(params[:sort])
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      image_params.each do |image|
        @product.photo.create(image: image)
      end
      redirect_to department_product_path(@product.department, @product), notice: "Product successfully added."

    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to department_product_path(@product.department, @product)
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to department_path(params[:department_id])
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def product_params
    params.require(:product).permit(:name, :description, :image_url, :availability, :price, :department_id)
  end
end
