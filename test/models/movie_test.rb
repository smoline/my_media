require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # validates :title, presence: true
  test "should not save movie without title" do
    @movie = Movie.new
    assert_not @movie.save, "Saved the movie without a title"
  end

  # validates :release_date, presence: true
  test "should not save movie without release date" do
    @movie = Movie.new
    assert_not @movie.save, "Saved the movie without a release_date"
  end

  # validates :tmdb_id, presence: true
  test "should not save movie without tmdb id" do
    @movie = Movie.new
    assert_not @movie.save, "Saved the movie without tmdb_id"
  end

  # validates_uniqueness_of :tmdb_id

end
