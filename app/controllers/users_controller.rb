class UsersController < ApplicationController
  # Esto permite que Angular pida la lista de usuarios
  def index
    @users = User.all
    render json: @users
  end

  # Esto permite que el botón "Guardar" de Angular funcione
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    # Solo permitimos que nos envíen email y password
    params.require(:user).permit(:email, :password)
  end
end
