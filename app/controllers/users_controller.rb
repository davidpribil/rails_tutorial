class UsersController < ApplicationController

  def index
    respond_to do |format|
      format.html { render locals: { users: User.all } }
    end
  end

  def new
    respond_to do |format|
      format.html { render locals: { user: User.new } }
    end
  end

  def create
    user = User.create(user_params)
    if user.errors.any?
      respond_to do |format|
        format.html { render 'new', locals: { user: user } }
      end
    else
      redirect_to action: :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :age, :password)
  end
end