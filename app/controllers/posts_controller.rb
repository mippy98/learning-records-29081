class PostsController < ApplicationController

  def index
    @posts = Post.all
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

  private

  def post_params
    params.require(:post).permit(:title, :conclusion, :content, :category_id, :study_time_id, :image).merge(user_id: current_user.id)
  end
end
