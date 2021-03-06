class MovieCast < ApplicationRecord
  belongs_to :movie
  belongs_to :person
  delegate :name, to: :person
  delegate :movie_image_url, to: :movie

  def create
    @cast_member = MovieCast.new
    @cast_member.movie_id = params[:movie_id]
    @cast_member.person_id = params[:person_id]
    @cast_member.character = params[:character]
    @cast_member.order = params[:order]
  end
end
