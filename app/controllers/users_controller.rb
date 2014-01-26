class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where("email like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end
  
  def profile
  end

  def show
    @user = User.find(params[:id])
  end

  def invite
    user = User.find(params[:id])
    current_user.invite user
    
    redirect_to user_url(user)
  end

  def friends
    user = User.find(params[:id])
    @friends =  user.friends.where("email like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @friends }
    end
  end
end