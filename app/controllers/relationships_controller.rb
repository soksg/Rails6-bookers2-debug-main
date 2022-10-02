class RelationshipsController < ApplicationController
before_action :set_user, only: [:followings, :followers]

  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  def followings
    user = User.find(params[:user_id])
    @users_followings = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users_followers = user.followers.all
  end

  def followings_users
    @user=User.find(params[:id])
    @users=@user.followings

  end

  def followers_users
    @user=User.find(params[:id])
    @users=@user.followers
  end

  private

  def set_user
    @user=User.find(params[:id])
  end

end



