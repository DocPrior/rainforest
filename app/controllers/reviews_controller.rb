class ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
    if @review.save
      flash[:notice] = "Review saved!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def review_params
    {comment: params[:review][:comment], rating: [:review][:rating], product_id: params[:product_id]}
  end

end
