class UserController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find_by(id: params["id"])
  end

  def create
    # require 'pry'
    # binding.pry
    user = User.new
    user.name = params["user"]["name"]
    user.email = params["user"]["email"]
    user.save!
    redirect_to user

    # private
    #
    # def user_params
    #   params.require(:user).permit(:name, :email)
    # end
  end

end
