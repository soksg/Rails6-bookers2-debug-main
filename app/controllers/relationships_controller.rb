class RelationshipsController < ApplicationController

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
    @users_followers = user.followers
  end
end


