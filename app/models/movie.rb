class Movie < ApplicationRecord
  include ImageUploader[:image]

  validates :title, presence: true

  has_many :favorites, dependent: :destroy

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
    p title_new

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

end
