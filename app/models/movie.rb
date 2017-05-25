class Movie < ApplicationRecord
  include ImageUploader[:image]

  validates :title, presence: true

  belongs_to :created_by, class_name: "User"
  has_many :favorites, dependent: :destroy
  has_many :genres, through: :movie_genres
  has_many :people, through: :movie_casts
  has_many :people, through: :movie_crews

  def self.find_movie_title(upc)
    response = HTTParty.get("http://www.searchupc.com/handlers/upcsearch.ashx", query: {
            request_type: 3,
            access_token: ENV['SEARCHUPC_TOKEN'],
            upc: upc
            })
    title = JSON.parse(response.body)["0"]["productname"]
    return title[/^[A-Za-z0-9\s\p.]+/i]
  end

  def self.find_initial_movie_info(title)
    title_new = title

    response = HTTParty.get("https://api.themoviedb.org/3/search/movie", query: {
      api_key: ENV['TMDB_API_KEY'],
        language: "en-US",
        query: title_new,
        page: 1,
        include_adult: false
      })

    movie_info = JSON.parse(response.body)["results"]
    return movie_info
  end

  def self.find_more_movie_info(tmdb_id)
    response = HTTParty.get("https://api.themoviedb.org/3/movie/#{tmdb_id}", query:
    {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US"
      })
    more_movie_info = JSON.parse(response.body)
    return more_movie_info
  end

  def self.search(search)

    where("title LIKE ? or release_date LIKE ? or description LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def runtime_hours
    hours = runtime.to_f / 60
    return hours.round(2)
  end

end
