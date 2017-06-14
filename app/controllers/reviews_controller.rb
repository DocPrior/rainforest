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
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:product_id])
    if @product.reviews.update(review_params)
      flash[:notice] = "Review Updated!"
      redirect_to products_path(:product_id)
    else
      redirect_back_or_to @review
  end

  def destroy
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  @review.destroy
  flash[:alert] = "Review Deleted!"
  redirect_to products_path(:product_id)
  end

  def review_params
    params.required(:review).permit( :comment, :rating)
  end

end
