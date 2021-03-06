class MovieCrew < ApplicationRecord
  belongs_to :movie
  belongs_to :person
  delegate :name, to: :person
  delegate :movie_image_url, to: :movie

  def create
    @crew_member = MovieCrew.new
    @crew_member.movie_id = params[:movie_id]
    @crew_member.person_id = params[:person_id]
    @crew_member.department = params[:department]
    @crew_member.job = params[:job]
  end
end
