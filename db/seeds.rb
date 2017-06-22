# This file should contain all the record creation needed to seed the database with its default values.
# require 'csv'

# Destroy all duplicate movies made by any id other than 3 (which has all movies)
# Movie.where(created_by_id: [1,2,4,5]).destroy_all

# Populate the Owner Table with all movies in the database for each user
Movie.all.each { |movie| Owner.create user_id: 3, movie_id: movie.id }

Movie.all.each { |movie| Owner.create user_id: 1, movie_id: movie.id }

Movie.all.each { |movie| Owner.create user_id: 2, movie_id: movie.id }

# copy all upc codes from Movie table over to Owner table for each user
Movie.all.each { |movie| Owner.find_by(user_id: 1, movie_id: movie.id).update upc: movie.upc }

Movie.all.each { |movie| Owner.find_by(user_id: 2, movie_id: movie.id).update upc: movie.upc }

Movie.all.each { |movie| Owner.find_by(user_id: 3, movie_id: movie.id).update upc: movie.upc }

# Movie.destroy_all
# Person.destroy_all
# MovieCast.destroy_all
# MovieCrew.destroy_all
# Favorite.destroy_all
# MovieGenre.destroy_all
# Game.destroy_all
# GameGenre.destroy_all
# GameFavorite.destroy_all

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'games.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   g = Game.new
#   g.upc = row['upc']
#   g.title = row['title']
#   g.description = row['description']
#   g.created_by_id = 2
#   g.game_image_url = row['game_image_url']
#   g.console_type = row['console_type']
#   g.brand = row['brand']
#   g.release_date = row['release_date']
#   g.save
#
#   puts "#{g.title} saved"
# end
#
# puts "There are now #{Game.count} rows in the games table"

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'games.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   g = Game.new
#   g.upc = row['upc']
#   g.title = row['title']
#   g.description = row['description']
#   g.created_by_id = 2
#   g.game_image_url = row['game_image_url']
#   g.console_type = row['console_type']
#   g.brand = row['brand']
#   g.release_date = row['release_date']
#   g.save
#
#   puts "#{g.title} saved"
# end
#
# puts "There are now #{Game.count} rows in the games table"
#
#
# Genre.destroy_all
#
# Genre.create!([
#   {
#     "tmdb_genre_id": 28,
#     "name": "Action"
#   },
#   {
#     "tmdb_genre_id": 12,
#     "name": "Adventure"
#   },
#   {
#     "tmdb_genre_id": 16,
#     "name": "Animation"
#   },
#   {
#     "tmdb_genre_id": 35,
#     "name": "Comedy"
#   },
#   {
#     "tmdb_genre_id": 80,
#     "name": "Crime"
#   },
#   {
#     "tmdb_genre_id": 99,
#     "name": "Documentary"
#   },
#   {
#     "tmdb_genre_id": 18,
#     "name": "Drama"
#   },
#   {
#     "tmdb_genre_id": 10751,
#     "name": "Family"
#   },
#   {
#     "tmdb_genre_id": 14,
#     "name": "Fantasy"
#   },
#   {
#     "tmdb_genre_id": 36,
#     "name": "History"
#   },
#   {
#     "tmdb_genre_id": 27,
#     "name": "Horror"
#   },
#   {
#     "tmdb_genre_id": 10402,
#     "name": "Music"
#   },
#   {
#     "tmdb_genre_id": 9648,
#     "name": "Mystery"
#   },
#   {
#     "tmdb_genre_id": 10749,
#     "name": "Romance"
#   },
#   {
#     "tmdb_genre_id": 878,
#     "name": "Science Fiction"
#   },
#   {
#     "tmdb_genre_id": 10770,
#     "name": "TV Movie"
#   },
#   {
#     "tmdb_genre_id": 53,
#     "name": "Thriller"
#   },
#   {
#     "tmdb_genre_id": 10752,
#     "name": "War"
#   },
#   {
#     "tmdb_genre_id": 37,
#     "name": "Western"
#   },
#   {
#     "tmdb_genre_id": 10759,
#     "name": "Action & Adventure"
#   },
#   {
#     "tmdb_genre_id": 10762,
#     "name": "Kids"
#   },
#   {
#     "tmdb_genre_id": 10763,
#     "name": "News"
#   },
#   {
#     "tmdb_genre_id": 10764,
#     "name": "Reality"
#   },
#   {
#     "tmdb_genre_id": 10765,
#     "name": "Sci-Fi & Fantasy"
#   },
#   {
#     "tmdb_genre_id": 10766,
#     "name": "Soap"
#   },
#   {
#     "tmdb_genre_id": 10767,
#     "name": "Talk"
#   },
#   {
#     "tmdb_genre_id": 10768,
#     "name": "War & Politics"
#   }
# ])
#
# puts "Created #{Genre.count} genres"

# GameGenreList.destroy_all
#
# GameGenreList.create!([
#     {
#           "igdb_genre_id" => 1,
#         "name" => "Action"
#     },
#     {
#           "igdb_genre_id" => 2,
#         "name" => "Strategy"
#     },
#     {
#           "igdb_genre_id" => 3,
#         "name" => "Sports"
#     },
#     {
#           "igdb_genre_id" => 4,
#         "name" => "Adventure"
#     },
#     {
#           "igdb_genre_id" => 5,
#         "name" => "Role-Playing"
#     },
#     {
#           "igdb_genre_id" => 6,
#         "name" => "Driving/Racing"
#     },
#     {
#           "igdb_genre_id" => 7,
#         "name" => "Simulation"
#     },
#     {
#           "igdb_genre_id" => 8,
#         "name" => "Educational"
#     },
#     {
#           "igdb_genre_id" => 9,
#         "name" => "Fighting"
#     },
#     {
#           "igdb_genre_id" => 10,
#         "name" => "Wrestling"
#     },
#     {
#           "igdb_genre_id" => 11,
#         "name" => "Shooter"
#     },
#     {
#           "igdb_genre_id" => 12,
#         "name" => "Real-Time Strategy"
#     },
#     {
#           "igdb_genre_id" => 13,
#         "name" => "Card Game"
#     },
#     {
#           "igdb_genre_id" => 14,
#         "name" => "Trivia/Board Game"
#     },
#     {
#           "igdb_genre_id" => 15,
#         "name" => "Compilation"
#     },
#     {
#           "igdb_genre_id" => 16,
#         "name" => "MMORPG"
#     },
#     {
#           "igdb_genre_id" => 17,
#         "name" => "Minigame Collection"
#     },
#     {
#           "igdb_genre_id" => 18,
#         "name" => "Puzzle"
#     },
#     {
#           "igdb_genre_id" => 19,
#         "name" => "Music/Rhythm"
#     },
#     {
#           "igdb_genre_id" => 20,
#         "name" => "Boxing"
#     },
#     {
#           "igdb_genre_id" => 21,
#         "name" => "Football"
#     },
#     {
#           "igdb_genre_id" => 22,
#         "name" => "Basketball"
#     },
#     {
#           "igdb_genre_id" => 23,
#         "name" => "Skateboarding"
#     },
#     {
#           "igdb_genre_id" => 24,
#         "name" => "Flight Simulator"
#     },
#     {
#           "igdb_genre_id" => 25,
#         "name" => "Tennis"
#     },
#     {
#           "igdb_genre_id" => 26,
#         "name" => "Billiards"
#     },
#     {
#           "igdb_genre_id" => 27,
#         "name" => "Fishing"
#     },
#     {
#           "igdb_genre_id" => 28,
#         "name" => "Golf"
#     },
#     {
#           "igdb_genre_id" => 29,
#         "name" => "Bowling"
#     },
#     {
#           "igdb_genre_id" => 30,
#         "name" => "Pinball"
#     },
#     {
#           "igdb_genre_id" => 31,
#         "name" => "Dual-Joystick Shooter"
#     },
#     {
#           "igdb_genre_id" => 32,
#         "name" => "First-Person Shooter"
#     },
#     {
#           "igdb_genre_id" => 33,
#         "name" => "Snowboarding/Skiing"
#     },
#     {
#           "igdb_genre_id" => 34,
#         "name" => "Baseball"
#     },
#     {
#           "igdb_genre_id" => 35,
#         "name" => "Light-Gun Shooter"
#     },
#     {
#           "igdb_genre_id" => 36,
#         "name" => "Text Adventure"
#     },
#     {
#           "igdb_genre_id" => 37,
#         "name" => "Brawler"
#     },
#     {
#           "igdb_genre_id" => 38,
#         "name" => "Vehicular Combat"
#     },
#     {
#           "igdb_genre_id" => 39,
#         "name" => "Hockey"
#     },
#     {
#           "igdb_genre_id" => 40,
#         "name" => "Soccer"
#     },
#     {
#           "igdb_genre_id" => 41,
#         "name" => "Platformer"
#     },
#     {
#           "igdb_genre_id" => 42,
#         "name" => "Track & Field"
#     },
#     {
#           "igdb_genre_id" => 43,
#         "name" => "Action-Adventure"
#     },
#     {
#           "igdb_genre_id" => 44,
#         "name" => "Fitness"
#     },
#     {
#           "igdb_genre_id" => 45,
#         "name" => "Block-Breaking"
#     },
#     {
#           "igdb_genre_id" => 46,
#         "name" => "Cricket"
#     },
#     {
#           "igdb_genre_id" => 47,
#         "name" => "Surfing"
#     },
#     {
#           "igdb_genre_id" => 48,
#         "name" => "Shoot 'Em Up"
#     },
#     {
#           "igdb_genre_id" => 49,
#         "name" => "Gambling"
#     },
#     {
#           "igdb_genre_id" => 50,
#         "name" => "MOBA"
#     }
# ])
# puts "Created #{GameGenreList.count} game genres"
