# This file should contain all the record creation needed to seed the database with its default values.
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'games.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  g = Game.new
  g.upc = row['upc']
  g.title = row['title']
  g.description = row['description']
  g.created_by_id =
  g.game_image_url = row['game_image_url']
  g.console_type = row['console_type']
  g.brand = row['brand']
  g.release_date = row['release_date']
  g.save

  puts "#{g.title} saved"
end

puts "There are now #{Game.count} rows in the games table"


Genre.destroy_all

Genre.create!([
  {
    "tmdb_genre_id": 28,
    "name": "Action"
  },
  {
    "tmdb_genre_id": 12,
    "name": "Adventure"
  },
  {
    "tmdb_genre_id": 16,
    "name": "Animation"
  },
  {
    "tmdb_genre_id": 35,
    "name": "Comedy"
  },
  {
    "tmdb_genre_id": 80,
    "name": "Crime"
  },
  {
    "tmdb_genre_id": 99,
    "name": "Documentary"
  },
  {
    "tmdb_genre_id": 18,
    "name": "Drama"
  },
  {
    "tmdb_genre_id": 10751,
    "name": "Family"
  },
  {
    "tmdb_genre_id": 14,
    "name": "Fantasy"
  },
  {
    "tmdb_genre_id": 36,
    "name": "History"
  },
  {
    "tmdb_genre_id": 27,
    "name": "Horror"
  },
  {
    "tmdb_genre_id": 10402,
    "name": "Music"
  },
  {
    "tmdb_genre_id": 9648,
    "name": "Mystery"
  },
  {
    "tmdb_genre_id": 10749,
    "name": "Romance"
  },
  {
    "tmdb_genre_id": 878,
    "name": "Science Fiction"
  },
  {
    "tmdb_genre_id": 10770,
    "name": "TV Movie"
  },
  {
    "tmdb_genre_id": 53,
    "name": "Thriller"
  },
  {
    "tmdb_genre_id": 10752,
    "name": "War"
  },
  {
    "tmdb_genre_id": 37,
    "name": "Western"
  },
  {
    "tmdb_genre_id": 10759,
    "name": "Action & Adventure"
  },
  {
    "tmdb_genre_id": 10762,
    "name": "Kids"
  },
  {
    "tmdb_genre_id": 10763,
    "name": "News"
  },
  {
    "tmdb_genre_id": 10764,
    "name": "Reality"
  },
  {
    "tmdb_genre_id": 10765,
    "name": "Sci-Fi & Fantasy"
  },
  {
    "tmdb_genre_id": 10766,
    "name": "Soap"
  },
  {
    "tmdb_genre_id": 10767,
    "name": "Talk"
  },
  {
    "tmdb_genre_id": 10768,
    "name": "War & Politics"
  }
]
)

puts "Created #{Genre.count} genres"
