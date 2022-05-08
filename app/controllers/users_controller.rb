class UsersController < ApplicationController
  def show
    user = User.find(session[:user_id])
    render json: user, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { status: :unprocessable_entity, message: "User not found" }
  end
end
