class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  def index
    @posts = Post.order('created_at DESC')
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
  private
  def post_params
    params.require(:post).permit(:image, :title, :prefecture_id, :budget_id, :explain, :transportation_id, :place).merge(user_id: current_user.id)
  end
end
