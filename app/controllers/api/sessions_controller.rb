class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username],
                                     params[:user][:password])
    if @user
      login(@user)
      render 'api/users/show'
    else
      render json: { errors: ["invalid credentials"] }, status: 422
    end
  end

  def destroy
    if logged_in?
      logout
      render json: {}
    else
      render json: { errors: ["no current user"] }, status: 404
    end
  end

end
