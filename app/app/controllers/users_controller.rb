
class UsersController < ApplicationController
  def index
  @users = User.all(:order => "created_at ASC")
  end

  def show
  @user = User.find(params[:id])
  @posts = Post.where(:user_id => @user.id).order("updated_at desc").page(params[:page]).per(10)
  end
end
