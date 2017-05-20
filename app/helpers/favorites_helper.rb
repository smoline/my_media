module FavoritesHelper

  def favorited(movieId)
    if Favorite.where(:movie_id => movieId, :user_id => current_user.id).exists?
      return true
    else
      return false
    end
  end

end
