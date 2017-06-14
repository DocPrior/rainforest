class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def product_params
    {name: params[:product][:name], description: params[:product][:description], price_in_cents: params[:product][:price_in_cents]}
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      flash[:notice] = "Product saved!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product udpated!"
      redirect_to @product
    else
      redirect_back_or_to @product
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:alert] = "Product deleted!"
    redirect_to "/products"
  end

  def product_params
    params.required(:product).permit(:name, :description, :price_in_cents)
  end

end
