class Owner < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :user
  belongs_to :movie

  def dont_use_create(params, user)
    @owned_movie = Owner.new
    @owned_movie.movie_id = params[:movie_id]
    @owned_movie.user_id = user.id
    @owned_movie.upc = params[:upc]
    @owned_movie.image = params[:image]
    @owned_movie.notes = params[:notes]
  end
end
