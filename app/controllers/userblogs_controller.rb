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
    @user=UserBlog.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Message is successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      
      else
        render "new"
      end
    end
  end

  def index
    @users=UserBlog.all
  end
  def set_user
    @user=UserBlog.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:message,:user_type,:user_id)
  end
end
