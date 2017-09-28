require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # validates :title, presence: true
  test "should not save movie without title" do
    @movie = Movie.new(tmdb_id: 5, description: "MyString", release_date: "1989-11-17", runtime: 1, tagline: "MyString", movie_image_url: "MyString")
    assert_not @movie.save, "Saved the movie without a title"
  end

  # validates :release_date, presence: true
  test "should not save movie without release date" do
    @movie = Movie.new(title: "MyString", tmdb_id: 5, description: "MyString", runtime: 1, tagline: "MyString", movie_image_url: "MyString")
    assert_not @movie.save, "Saved the movie without a release_date"
  end

  # validates :tmdb_id, presence: true
  test "should not save movie without tmdb id" do
    @movie = Movie.new(title: "MyString", description: "MyString", release_date: "1989-11-17", runtime: 1, tagline: "MyString", movie_image_url: "MyString")
    assert_not @movie.save, "Saved the movie without tmdb_id"
  end

  # write test for validates_uniqueness_of :tmdb_id
  test "should validates uniqueness of tmdb id" do
    @movie = Movie.new(title: "MyString", tmdb_id: 1, description: "MyString", release_date: "1989-11-17", runtime: 1, tagline: "MyString", movie_image_url: "MyString")
    assert_not @movie.save, "Saved the movie without a unique tmdb_id"
  end
end
