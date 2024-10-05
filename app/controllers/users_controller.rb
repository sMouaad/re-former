class UsersController < ApplicationController
  def new
    def new
      @user = User.new
    end
  end
  def create
    user = User.new(user_params)
    if user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
