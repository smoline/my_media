class Game < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  validates :title, presence: true

  belongs_to :created_by, class_name: "User"
  has_many :game_favorites, dependent: :destroy

  has_many :game_genre_lists, through: :game_genres
  has_many :game_genres, dependent: :destroy

  has_many :game_companies, through: :developers
  has_many :developers, dependent: :destroy

# Use this one if upcitemdb has problems
  # def self.find_game_title(upc)
  #   response = HTTParty.get("http://www.searchupc.com/handlers/upcsearch.ashx", query: {
  #           request_type: 3,
  #           access_token: ENV['SEARCHUPC_TOKEN'],
  #           upc: upc
  #           })
  #   title = JSON.parse(response.body)["0"]["productname"]
  #   return title
  # end

  def self.find_game_title(upc)
    response = HTTParty.get("https://api.upcitemdb.com/prod/trial/lookup", query: {
            upc: upc
            })
    title = JSON.parse(response.body)
    if title.present?
      title = title["items"][0]["title"]
      title = title[/^[A-Za-z0-9]+[^\-\(\[]+/i]
    else
      title = ""
    end
    return title
  end

  def self.find_initial_games_info(title)
    title_new = title

    response = HTTParty.get("http://www.giantbomb.com/api/search/",
      query: {
        api_key: ENV['GIANTBOMB_API_KEY'],
        format: 'json',
        query: "#{title_new}",
        resources: 'game',
        field_list: 'id,name'
        })
    games_info = JSON.parse(response.body)["results"]
    return games_info
  end

  def self.find_more_game_info(igdb_id)
    response = HTTParty.get("https://www.giantbomb.com/api/game/#{igdb_id}/",
      query: {
        api_key: ENV['GIANTBOMB_API_KEY'],
        format: 'json',
        field_list: 'id,name,deck,image,original_release_date,genres,developers'
        })
    more_game_info = JSON.parse(response.body)["results"]
    return more_game_info
  end

  def self.search(search, user_id)
    where("(LOWER(title) LIKE ? or LOWER(description) LIKE ?) AND created_by_id = ?", "%#{search.downcase}%", "%#{search.downcase}%", user_id)
  end
end
