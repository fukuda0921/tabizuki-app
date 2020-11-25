class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new,:edit, :destory]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
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

  def show 
  end
  
  def edit
    unless current_user.id == @post.user_id
      redirect_to action: :index
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy if current_user.id == @post.user_id
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:image, :title, :prefecture_id, :budget_id, :explain, :transportation_id, :place).merge(user_id: current_user.id)
  end
end
