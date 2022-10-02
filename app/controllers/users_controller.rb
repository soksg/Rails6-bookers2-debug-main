class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  # before_action :set_user, only: [:followings, :followers]

  def index
    @users = User.all
    @book = Book.new
    @user=current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end

  # def followings_users
  #   @users=@user.followings
  # end

  # def followers_users
  #   @users=@user.followers
  # end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

  # def set_user
  #   @user=User.find(params[:id])
  # end

end
