class UsersController < ApplicationController

  def index
     @user = User.all
  end

   def show
     @user = User.find(params[:id])
   end

   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      #redirect_to @user
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:login, :email)
  end
end
