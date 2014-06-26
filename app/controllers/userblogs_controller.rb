class UserblogsController < ApplicationController
  #before_action :set_user, only:[]
  def new
    @users=UserBlog.all
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def show
   @users=UserBlog.all
  end

  def create
  end

  def index
    @users=UserBlog.all
  end
  def set_user
    @user=UserBlog.find(params[:id])
  end
end
