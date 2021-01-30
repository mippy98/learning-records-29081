class UsersController < ApplicationController
  def show
    @name = current_user.name
    @posts = current_user.posts.page(params[:page]).per(10)
  end
end
