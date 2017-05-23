class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(movie_id: params[:movieId])
  end

  def destroy
    favorite = Favorite.find_by(movie_id: params[:movieId], user_id: current_user.id)
    favorite.destroy
  end
end
