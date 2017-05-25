class Person < ApplicationRecord
  has_many :movies, through: :movie_casts
  has_many :movies, through: :movie_crews
end
