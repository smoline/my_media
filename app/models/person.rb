class Person < ApplicationRecord
  has_many :movies_as_cast, through: :movie_casts, class_name: "Movie"
  has_many :movies_as_crew, through: :movie_crews, class_name: "Movie"

  def self.get_person_details(tmdb_people_id)
    response = HTTParty.get("https://api.themoviedb.org/3/person/#{tmdb_people_id}", query:
    {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US"
      })
    person_details = JSON.parse(response.body)
    return person_details
  end
end
