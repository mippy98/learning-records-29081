class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only:[:show, :edit]

  def index
    @posts = Post.all.order("created_at DESC")
    @posts = Post.all.page(params[:page]).per(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
     render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :conclusion, :content, :category_id, :study_time_id, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
