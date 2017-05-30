class GameFavoritesController < ApplicationController
  def create
    current_user.game_favorites.create(game_id: params[:gameId])
  end

  def destroy
    gamefavorite = GameFavorite.find_by(game_id: params[:gameId], user_id: current_user.id)
    gamefavorite.destroy
  end
end
