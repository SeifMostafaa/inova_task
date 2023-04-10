class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    
    unless @review.save
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    else
      render json: @review, status: :ok
    end
  end

  private

  def review_params
    params.permit(:user_id, :post_id, :rate, :comment)
  end
end