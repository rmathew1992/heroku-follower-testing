class V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.create(name: user_params)

    render json: user
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
