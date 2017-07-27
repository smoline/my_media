module TvFavoritesHelper
  def tv_favorited(tvshowId)
    if TvFavorite.where(:tv_show_id => tvshowId, :user_id => current_user.id).exists?
      return true
    else
      return false
    end
  end
end
