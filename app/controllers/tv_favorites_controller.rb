class TvFavoritesController < ApplicationController
  def create
    current_user.tv_favorites.create(:tv_show_id => params[:tvshowId])
  end

  def destroy
    tv_favorite = TvFavorite.find_by(:tv_show_id => params[:tvshowId], :user_id => current_user.id)
    tv_favorite.destroy
  end
end
