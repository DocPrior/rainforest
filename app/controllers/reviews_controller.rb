class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    if @review.save
      flash[:notice] = "Review saved!"
      redirect_to products_path
    else
      render '/products/show'
    end
  end

  def edit

  end

  def update

  end

  def destroy
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  @review.destroy
  flash[:alert] = "Review Deleted!"
  redirect_to @product
  end

  def review_params
    params.required(:review).permit( :comment, :rating)
  end

end
