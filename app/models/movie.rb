class Movie < ApplicationRecord

  validates :title, presence: true
  validates :release_date, presence: true
  validates :tmdb_id, presence: true
  validates_uniqueness_of :tmdb_id

  has_many :owners, dependent: :destroy
  accepts_nested_attributes_for :owners
  has_many :movie_owners, through: :owners, class_name: "User", source: :user
  has_many :favorites, dependent: :destroy
  has_many :movie_favorites, through: :favorites, class_name: "User", source: :user

  has_many :movie_genres, dependent: :destroy
  has_many :genres, through: :movie_genres

  has_many :movie_casts, dependent: :destroy
  has_many :cast_members, through: :movie_casts, class_name: "Person", source: :person
  has_many :movie_crews, dependent: :destroy
  has_many :crew_members, through: :movie_crews, class_name: "Person", source: :person

  def self.find_movie_title(upc)
    response = HTTParty.get("http://www.searchupc.com/handlers/upcsearch.ashx", query: {
            request_type: 3,
            access_token: ENV['SEARCHUPC_TOKEN'],
            upc: upc
            })
    title = JSON.parse(response.body)
    if title.present?
      title = title["0"]["productname"]
      title = title[/^[A-Za-z0-9\s\p.]+/i]
    else
      title = ""
    end
    return title
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

  def self.get_movie_credits(tmdb_id)
    response = HTTParty.get("https://api.themoviedb.org/3/movie/#{tmdb_id}/credits", query:
    {
      api_key: ENV['TMDB_API_KEY']
      })
    credits = JSON.parse(response.body)
    return credits
  end

  def self.search(search, user_id)
    joins('LEFT JOIN "movie_crews" ON "movie_crews"."movie_id" = "movies"."id" LEFT JOIN "people" AS "people1" ON "people1"."id" = "movie_crews"."person_id" LEFT JOIN "movie_casts" ON "movie_casts"."movie_id" = "movies"."id" LEFT JOIN "people" AS "people2" ON "people2"."id" = "movie_casts"."person_id" LEFT JOIN "owners" ON "owners"."movie_id" = "movies"."id" LEFT JOIN "users" ON "users"."id" = "owners"."user_id"').where("(LOWER(movies.title) LIKE ? or movies.release_date LIKE ? or LOWER(movies.description) LIKE ?) or (LOWER(people1.name) LIKE ? OR LOWER(people2.name) LIKE ?) AND owners.user_id = ?", "%#{search.downcase}%", "%#{search}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", user_id).distinct
  end

  def runtime_hours
    hours = runtime.to_f / 60
    return hours.round(2)
  end

  def year_age
    age = Time.now.year - release_date.to_date.year
    return age
  end
end
