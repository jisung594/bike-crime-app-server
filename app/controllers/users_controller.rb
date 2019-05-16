class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    render json: @user
  end


  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :location)
  end

end
