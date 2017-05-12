class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      puts 'VALID SAVE'
      login(@user)
      render :show
    else
      puts 'ERROR WITH USER CREDENTIALS'
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
