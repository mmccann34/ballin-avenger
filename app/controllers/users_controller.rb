class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where("email like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end
  
  def show
  end
end