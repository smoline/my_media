module GameFavoritesHelper
  def gamefavorited(gameId)
    if GameFavorite.where(:game_id => gameId, :user_id => current_user.id).exists?
      return true
    else
      return false
    end
  end
end
