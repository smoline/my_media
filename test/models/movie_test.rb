require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save movie without title" do
    movie = Movie.new
    assert_not movie.save, "Saved the movie without a title"
  end
end
