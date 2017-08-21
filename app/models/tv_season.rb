class TvSeason < ApplicationRecord
  belongs_to :tv_show

  has_many :tv_casts, dependent: :destroy
  has_many :people, through: :tv_casts

  has_many :tv_episodes, dependent: :destroy, inverse_of: :tv_season
  accepts_nested_attributes_for :tv_episodes

  validates :tv_show, presence: true

  def self.find_more_tv_season_info(tmdb_show_id, season_number)
    response = HTTParty.get("https://api.themoviedb.org/3/tv/#{tmdb_show_id}/season/#{season_number}", query:
    {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US"
      })
    more_tv_season_info = JSON.parse(response.body)
    return more_tv_season_info
  end
end
