class TvShow < ApplicationRecord
  has_many :tv_favorites, dependent: :destroy

  has_many :tv_genres, dependent: :destroy
  has_many :genres, through: :tv_genres

  has_many :tv_creators, dependent: :destroy
  has_many :people, through: :tv_creators

  has_many :tv_seasons, dependent: :destroy
  accepts_nested_attributes_for :tv_seasons, dependent: :destroy, inverse_of: :tv_show
  accepts_nested_attributes_for :tv_episodes, dependent: :destroy, inverse_of: :tv_show
  accepts_nested_attributes_for :tv_owners, dependent: :destroy, inverse_of: :tv_show

  def self.find_initial_tv_show_info(name)
    name_new = name

    response = HTTParty.get("https://api.themoviedb.org/3/search/tv", query: {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US",
      query: name_new,
      page: 1
      })

    tv_show_info = JSON.parse(response.body)["results"]
    return tv_show_info
  end

  def self.find_more_tv_show_info(tmdb_show_id)
    response = HTTParty.get("https://api.themoviedb.org/3/tv/#{tmdb_show_id}", query:
    {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US"
      })
    more_tv_show_info = JSON.parse(response.body)
    return more_tv_show_info
  end
end
