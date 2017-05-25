class Person < ApplicationRecord
  has_many :movies_as_cast, through: :movie_casts, class_name: "Movie"
  has_many :movies_as_crew, through: :movie_crews, class_name: "Movie"
end
