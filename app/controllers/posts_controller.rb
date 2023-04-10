class PostsController < ApplicationController
  def index
    @user = User.where(id: params[:user_id]).first
    @posts = @user.posts.page params[:page]

    render json: @posts
  end

  def top_posts
    posts_ids = Review.order(rate: :desc).distinct.limit(100).pluck(:post_id)
    @posts = Post.where(id: posts_ids).page params[:page]

    render json: @posts
  end
end