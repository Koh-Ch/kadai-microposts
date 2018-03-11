class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  def create
    post=Micropost.find(params[:micropost_id])
    current_user.favorite(post)
    flash[:success]='お気に入りに登録しました。'
    redirect_to current_user #0310
  end

  def destroy
    post=Micropost.find(params[:micropost_id])
    current_user.unfavorite(post)
    flash[:success]='お気に入りを解除しました。'
    #redirect_to favoriteposts_user
    redirect_to current_user #0310
  end
end
