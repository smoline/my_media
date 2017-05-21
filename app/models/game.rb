class Game < ApplicationRecord
  include ImageUploader[:image]

  def self.find_game_title(upc)
    response = HTTParty.get("http://www.searchupc.com/handlers/upcsearch.ashx", query: {
            request_type: 3,
            access_token: ENV['SEARCHUPC_TOKEN'],
            upc: upc
            })
    title = JSON.parse(response.body)["0"]["productname"]
    p title
    return title
  end

  def self.find_game_info(upc)
    response = HTTParty.get("https://api.upcitemdb.com/prod/trial/lookup", query: {
            upc: upc
            })
    game_info = JSON.parse(response.body)
    p game_info
    return game_info
  end

  def self.search(search)
    where("title LIKE ? or description LIKE ?", "%#{search}%", "%#{search}%")
  end
end
