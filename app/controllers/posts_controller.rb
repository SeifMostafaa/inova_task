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

  def create
    @post = Post.new(post_params)
    
    unless @post.save
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    else
      render json: @post, status: :ok
    end
  end

  private

  def post_params
    params.permit(:user_id, :title, :body)
  end
end