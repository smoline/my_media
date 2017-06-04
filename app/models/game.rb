class Game < ApplicationRecord
  include ImageUploader[:image]

  validates :title, presence: true

  belongs_to :created_by, class_name: "User"
  has_many :game_favorites, dependent: :destroy

  has_many :game_genre_lists, through: :game_genres
  has_many :game_genres, dependent: :destroy


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

    response = HTTParty.get("https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name&limit=30&offset=0&search=#{title_new}", headers: {
          "X-Mashape-Key" => ENV['IGDB_API_KEY'],
          "Accept" => "application/json"
                })
    games_info = JSON.parse(response.body)
    return games_info
  end

  def self.find_more_game_info(igdb_id)
    response = HTTParty.get("https://igdbcom-internet-game-database-v1.p.mashape.com/games/#{igdb_id}?fields=id%2Cname%2Csummary%2Cdevelopers%2Cgenres%2Cfirst_release_date%2Ccover", headers: {
            "X-Mashape-Key" => ENV['IGDB_API_KEY'],
            "Accept" => "application/json"
            })
    more_game_info = JSON.parse(response.body)[0]
    return more_game_info
  end

  def self.search(search, user_id)
    where("(LOWER(title) LIKE ? or LOWER(description) LIKE ?) AND created_by_id = ?", "%#{search.downcase}%", "%#{search.downcase}%", user_id)
  end
end
