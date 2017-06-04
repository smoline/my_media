# This file should contain all the record creation needed to seed the database with its default values.
# require 'csv'

# Movie.destroy_all
# Person.destroy_all
# MovieCast.destroy_all
# MovieCrew.destroy_all
# Favorite.destroy_all
# MovieGenre.destroy_all
# Game.destroy_all

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

GameGenreList.destroy_all

GameGenreList.create!([
     {
            "igdb_genre_id" => 2,
          "name" => "Point-and-click"
      },
      {
            "igdb_genre_id" => 4,
          "name" => "Fighting"
      },
      {
            "igdb_genre_id" => 5,
          "name" => "Shooter"
      },
      {
            "igdb_genre_id" => 7,
          "name" => "Music"
      },
      {
            "igdb_genre_id" => 8,
          "name" => "Platform"
      },
      {
            "igdb_genre_id" => 9,
          "name" => "Puzzle"
      },
      {
            "igdb_genre_id" => 10,
          "name" => "Racing"
      },
      {
            "igdb_genre_id" => 11,
          "name" => "Real Time Strategy (RTS)"
      },
      {
            "igdb_genre_id" => 12,
          "name" => "Role-playing (RPG)"
      },
      {
            "igdb_genre_id" => 13,
          "name" => "Simulator"
      },
      {
            "igdb_genre_id" => 14,
          "name" => "Sport"
      },
      {
            "igdb_genre_id" => 15,
          "name" => "Strategy"
      },
      {
            "igdb_genre_id" => 16,
          "name" => "Turn-based strategy (TBS)"
      },
      {
            "igdb_genre_id" => 24,
          "name" => "Tactical"
      },
      {
            "igdb_genre_id" => 25,
          "name" => "Hack and slash/Beat 'em up"
      },
      {
            "igdb_genre_id" => 26,
          "name" => "Quiz/Trivia"
      },
      {
            "igdb_genre_id" => 30,
          "name" => "Pinball"
      },
      {
            "igdb_genre_id" => 31,
          "name" => "Adventure"
      },
      {
            "igdb_genre_id" => 32,
          "name" => "Indie"
      },
      {
            "igdb_genre_id" => 33,
          "name" => "Arcade"
      }
  ])
puts "Created #{GameGenreList.count} game genres"

# GameCompany.create!([
#     {
#           "id" => 1874,
#         "name" => "Character Soft",
#          "url" => "https://www.igdb.com/companies/character-soft"
#     },
#     {
#           "id" => 1876,
#         "name" => "Dorart",
#          "url" => "https://www.igdb.com/companies/dorart"
#     },
#     {
#           "id" => 1877,
#         "name" => "Tomcat System",
#          "url" => "https://www.igdb.com/companies/tomcat-system"
#     },
#     {
#           "id" => 1878,
#         "name" => "Powerhouse Animation Studios",
#          "url" => "https://www.igdb.com/companies/powerhouse-animation-studios"
#     },
#     {
#           "id" => 1879,
#         "name" => "Eight Ball Sound",
#          "url" => "https://www.igdb.com/companies/eight-ball-sound"
#     },
#     {
#           "id" => 1880,
#         "name" => "West Productions",
#          "url" => "https://www.igdb.com/companies/west-productions"
#     },
#     {
#           "id" => 1881,
#         "name" => "SPG Studios",
#          "url" => "https://www.igdb.com/companies/spg-studios"
#     },
#     {
#           "id" => 1883,
#         "name" => "Vector Unit",
#          "url" => "https://www.igdb.com/companies/vector-unit"
#     },
#     {
#           "id" => 1884,
#         "name" => "CSK Research Institute",
#          "url" => "https://www.igdb.com/companies/csk-research-institute"
#     },
#     {
#           "id" => 1885,
#         "name" => "CRI Middleware",
#          "url" => "https://www.igdb.com/companies/cri-middleware"
#     },
#     {
#           "id" => 3620,
#         "name" => "ArcTV Ltd.",
#          "url" => "https://www.igdb.com/companies/arctv-ltd"
#     },
#     {
#           "id" => 3621,
#         "name" => "toneworx GmbH",
#          "url" => "https://www.igdb.com/companies/toneworx-gmbh"
#     },
#     {
#           "id" => 3622,
#         "name" => "Draftfcb",
#          "url" => "https://www.igdb.com/companies/draftfcb"
#     },
#     {
#           "id" => 3623,
#         "name" => "NOA Product Testing",
#          "url" => "https://www.igdb.com/companies/noa-product-testing"
#     },
#     {
#           "id" => 3624,
#         "name" => "NOE Quality Assurance",
#          "url" => "https://www.igdb.com/companies/noe-quality-assurance"
#     },
#     {
#           "id" => 3625,
#         "name" => "Aryz",
#          "url" => "https://www.igdb.com/companies/aryz"
#     },
#     {
#           "id" => 3626,
#         "name" => "Ethos",
#          "url" => "https://www.igdb.com/companies/ethos"
#     },
#     {
#           "id" => 3627,
#         "name" => "Iemza",
#          "url" => "https://www.igdb.com/companies/iemza"
#     },
#     {
#           "id" => 3628,
#         "name" => "K74",
#          "url" => "https://www.igdb.com/companies/k74"
#     },
#     {
#           "id" => 3629,
#         "name" => "Hakka",
#          "url" => "https://www.igdb.com/companies/hakka"
#     },
#     {
#           "id" => 3630,
#         "name" => "Capcom Japan",
#          "url" => "https://www.igdb.com/companies/capcom-japan"
#     },
#     {
#           "id" => 3631,
#         "name" => "Universally Speaking Ltd.",
#          "url" => "https://www.igdb.com/companies/universally-speaking-ltd"
#     },
#     {
#           "id" => 3632,
#         "name" => "Audiomotion Studio",
#          "url" => "https://www.igdb.com/companies/audiomotion-studio"
#     },
#     {
#           "id" => 3633,
#         "name" => "The Mill",
#          "url" => "https://www.igdb.com/companies/the-mill"
#     },
#     {
#           "id" => 3634,
#         "name" => "Sperasoft",
#          "url" => "https://www.igdb.com/companies/sperasoft"
#     },
#     {
#           "id" => 3635,
#         "name" => "Xentrix Studos",
#          "url" => "https://www.igdb.com/companies/xentrix-studos"
#     },
#     {
#           "id" => 3636,
#         "name" => "Audio Network",
#          "url" => "https://www.igdb.com/companies/audio-network"
#     },
#     {
#           "id" => 3637,
#         "name" => "Windham Classics Corporation",
#          "url" => "https://www.igdb.com/companies/windham-classics-corporation"
#     },
#     {
#           "id" => 3638,
#         "name" => "The Northwest Sinfonia",
#          "url" => "https://www.igdb.com/companies/the-northwest-sinfonia"
#     },
#     {
#           "id" => 3639,
#         "name" => "Bratislava Symphony",
#          "url" => "https://www.igdb.com/companies/bratislava-symphony"
#     },
#     {
#           "id" => 3640,
#         "name" => "Bratislave Symphony",
#          "url" => "https://www.igdb.com/companies/bratislave-symphony"
#     },
#     {
#           "id" => 3641,
#         "name" => "Studio 1 Slovak Radio",
#          "url" => "https://www.igdb.com/companies/studio-1-slovak-radio"
#     },
#     {
#           "id" => 3642,
#         "name" => "MJR Studios",
#          "url" => "https://www.igdb.com/companies/mjr-studios"
#     },
#     {
#           "id" => 3643,
#         "name" => "Steambot",
#          "url" => "https://www.igdb.com/companies/steambot"
#     },
#     {
#           "id" => 3644,
#         "name" => "Valkyrie Entertainment",
#          "url" => "https://www.igdb.com/companies/valkyrie-entertainment"
#     },
#     {
#           "id" => 3645,
#         "name" => "Sixmorevodka",
#          "url" => "https://www.igdb.com/companies/sixmorevodka"
#     },
#     {
#           "id" => 3646,
#         "name" => "Goldtooth Creative Agency",
#          "url" => "https://www.igdb.com/companies/goldtooth-creative-agency"
#     },
#     {
#           "id" => 3647,
#         "name" => "Digital Domain Productions",
#          "url" => "https://www.igdb.com/companies/digital-domain-productions"
#     },
#     {
#           "id" => 3648,
#         "name" => "Division48",
#          "url" => "https://www.igdb.com/companies/division48"
#     },
#     {
#           "id" => 3649,
#         "name" => "The Famous Radio Ranch",
#          "url" => "https://www.igdb.com/companies/the-famous-radio-ranch"
#     },
#     {
#           "id" => 3650,
#         "name" => "Ubisoft Bucharest",
#          "url" => "https://www.igdb.com/companies/ubisoft-bucharest"
#     },
#     {
#           "id" => 3651,
#         "name" => "4-Real Intermedia GmbH",
#          "url" => "https://www.igdb.com/companies/4-real-intermedia-gmbh"
#     },
#     {
#           "id" => 3652,
#         "name" => "Gameloc Localization Services S.L.",
#          "url" => "https://www.igdb.com/companies/gameloc-localization-services-sl"
#     },
#     {
#           "id" => 3653,
#         "name" => "All Correct Language Solutions",
#          "url" => "https://www.igdb.com/companies/all-correct-language-solutions"
#     },
#     {
#           "id" => 3654,
#         "name" => "Bug-Tracker Laboratories Inc.",
#          "url" => "https://www.igdb.com/companies/bug-tracker-laboratories-inc"
#     },
#     {
#           "id" => 3655,
#         "name" => "Ubisoft Pune",
#          "url" => "https://www.igdb.com/companies/ubisoft-pune"
#     },
#     {
#           "id" => 3656,
#         "name" => "Ubisoft USA",
#          "url" => "https://www.igdb.com/companies/ubisoft-usa"
#     },
#     {
#           "id" => 3657,
#         "name" => "solocal.de",
#          "url" => "https://www.igdb.com/companies/solocal-dot-de"
#     },
#     {
#           "id" => 3658,
#         "name" => "Quoted Tradução e Localização",
#          "url" => "https://www.igdb.com/companies/quoted-traducao-e-localizacao"
#     },
#     {
#           "id" => 3659,
#         "name" => "Roboto Translation",
#          "url" => "https://www.igdb.com/companies/roboto-translation"
#     },
#     {
#           "id" => 3541,
#         "name" => "VMC Game Labs",
#          "url" => "https://www.igdb.com/companies/vmc-game-labs"
#     },
#     {
#           "id" => 3542,
#         "name" => "Logrus International",
#          "url" => "https://www.igdb.com/companies/logrus-international"
#     },
#     {
#           "id" => 3543,
#         "name" => "Igloo Music",
#          "url" => "https://www.igdb.com/companies/igloo-music"
#     },
#     {
#           "id" => 3544,
#         "name" => "Performance Designed Products",
#          "url" => "https://www.igdb.com/companies/performance-designed-products"
#     },
#     {
#           "id" => 3545,
#         "name" => "Electronic Data Systems LLC",
#          "url" => "https://www.igdb.com/companies/electronic-data-systems-llc"
#     },
#     {
#           "id" => 3546,
#         "name" => "Keywords International Ltd",
#          "url" => "https://www.igdb.com/companies/keywords-international-ltd--1"
#     },
#     {
#           "id" => 3547,
#         "name" => "big idea music productions inc.",
#          "url" => "https://www.igdb.com/companies/big-idea-music-productions-inc"
#     },
#     {
#           "id" => 3548,
#         "name" => "Kimber Kable",
#          "url" => "https://www.igdb.com/companies/kimber-kable"
#     },
#     {
#           "id" => 3549,
#         "name" => "FDW-Worldwide",
#          "url" => "https://www.igdb.com/companies/fdw-worldwide"
#     },
#     {
#           "id" => 3550,
#         "name" => "SHURE",
#          "url" => "https://www.igdb.com/companies/shure"
#     },
#     {
#           "id" => 3551,
#         "name" => "TASCAM",
#          "url" => "https://www.igdb.com/companies/tascam"
#     },
#     {
#           "id" => 3552,
#         "name" => "TC-HELICON",
#          "url" => "https://www.igdb.com/companies/tc-helicon"
#     },
#     {
#           "id" => 3553,
#         "name" => "West LA Music",
#          "url" => "https://www.igdb.com/companies/west-la-music"
#     },
#     {
#           "id" => 3554,
#         "name" => "VSL",
#          "url" => "https://www.igdb.com/companies/vsl"
#     },
#     {
#           "id" => 3555,
#         "name" => "Media Grabbers",
#          "url" => "https://www.igdb.com/companies/media-grabbers"
#     },
#     {
#           "id" => 3556,
#         "name" => "Futurepoly Studios",
#          "url" => "https://www.igdb.com/companies/futurepoly-studios"
#     },
#     {
#           "id" => 3557,
#         "name" => "Ten Gun Design",
#          "url" => "https://www.igdb.com/companies/ten-gun-design"
#     },
#     {
#           "id" => 3558,
#         "name" => "AudioSurgery",
#          "url" => "https://www.igdb.com/companies/audiosurgery"
#     },
#     {
#           "id" => 3559,
#         "name" => "Sound Lab",
#          "url" => "https://www.igdb.com/companies/sound-lab"
#     },
#     {
#           "id" => 3560,
#         "name" => "Tepo Swaoe Agency",
#          "url" => "https://www.igdb.com/companies/tepo-swaoe-agency"
#     },
#     {
#           "id" => 3561,
#         "name" => "Ghost UK",
#          "url" => "https://www.igdb.com/companies/ghost-uk"
#     },
#     {
#           "id" => 3562,
#         "name" => "EA Vancouver",
#          "url" => "https://www.igdb.com/companies/ea-vancouver"
#     },
#     {
#           "id" => 3563,
#         "name" => "Varvet AB",
#          "url" => "https://www.igdb.com/companies/varvet-ab"
#     },
#     {
#           "id" => 3564,
#         "name" => "Tiburon Artworks",
#          "url" => "https://www.igdb.com/companies/tiburon-artworks"
#     },
#     {
#           "id" => 3565,
#         "name" => "Glass Egg Digital Media Ltd.",
#          "url" => "https://www.igdb.com/companies/glass-egg-digital-media-ltd"
#     },
#     {
#           "id" => 3566,
#         "name" => "Fresh Inc.",
#          "url" => "https://www.igdb.com/companies/fresh-inc"
#     },
#     {
#           "id" => 3567,
#         "name" => "Mike Hayes Design",
#          "url" => "https://www.igdb.com/companies/mike-hayes-design"
#     },
#     {
#           "id" => 3568,
#         "name" => "Resolution Digital Studios Chicago",
#          "url" => "https://www.igdb.com/companies/resolution-digital-studios-chicago"
#     },
#     {
#           "id" => 3569,
#         "name" => "Sound Chemistry LLC",
#          "url" => "https://www.igdb.com/companies/sound-chemistry-llc"
#     },
#     {
#           "id" => 3570,
#         "name" => "Northwest Sinfonia",
#          "url" => "https://www.igdb.com/companies/northwest-sinfonia"
#     },
#     {
#           "id" => 3571,
#         "name" => "Studio X, Seattle",
#          "url" => "https://www.igdb.com/companies/studio-x-seattle"
#     },
#     {
#           "id" => 3572,
#         "name" => "Prologue Films",
#          "url" => "https://www.igdb.com/companies/prologue-films"
#     },
#     {
#           "id" => 3573,
#         "name" => "Umbra",
#          "url" => "https://www.igdb.com/companies/umbra"
#     },
#     {
#           "id" => 3574,
#         "name" => "Libera",
#          "url" => "https://www.igdb.com/companies/libera"
#     },
#     {
#           "id" => 3575,
#         "name" => "London Voices",
#          "url" => "https://www.igdb.com/companies/london-voices"
#     },
#     {
#           "id" => 3576,
#         "name" => "Abbey Road Studios",
#          "url" => "https://www.igdb.com/companies/abbey-road-studios"
#     },
#     {
#           "id" => 3577,
#         "name" => "Hog Hill Mill",
#          "url" => "https://www.igdb.com/companies/hog-hill-mill"
#     },
#     {
#           "id" => 3578,
#         "name" => "Henson Recording Studios",
#          "url" => "https://www.igdb.com/companies/henson-recording-studios"
#     },
#     {
#           "id" => 3579,
#         "name" => "United Talent Agency",
#          "url" => "https://www.igdb.com/companies/united-talent-agency"
#     },
#     {
#           "id" => 3580,
#         "name" => "West Coast Armory",
#          "url" => "https://www.igdb.com/companies/west-coast-armory"
#     },
#     {
#           "id" => 3581,
#         "name" => "Demonware",
#          "url" => "https://www.igdb.com/companies/demonware"
#     },
#     {
#           "id" => 3582,
#         "name" => "Activision Publishing",
#          "url" => "https://www.igdb.com/companies/activision-publishing"
#     },
#     {
#           "id" => 3583,
#         "name" => "Step 3",
#          "url" => "https://www.igdb.com/companies/step-3"
#     },
#     {
#           "id" => 3584,
#         "name" => "NCompass",
#          "url" => "https://www.igdb.com/companies/ncompass"
#     },
#     {
#           "id" => 3585,
#         "name" => "Midnight Oil",
#          "url" => "https://www.igdb.com/companies/midnight-oil"
#     },
#     {
#           "id" => 3586,
#         "name" => "72 and Sunny",
#          "url" => "https://www.igdb.com/companies/72-and-sunny"
#     },
#     {
#           "id" => 3587,
#         "name" => "Edelman Digital",
#          "url" => "https://www.igdb.com/companies/edelman-digital"
#     },
#     {
#           "id" => 1871,
#         "name" => "GameMaxx",
#          "url" => "https://www.igdb.com/companies/gamemaxx"
#     },
#     {
#           "id" => 1872,
#         "name" => "C2 Vision",
#          "url" => "https://www.igdb.com/companies/c2-vision"
#     },
#     {
#           "id" => 1873,
#         "name" => "Culture Publishers",
#          "url" => "https://www.igdb.com/companies/culture-publishers"
#     },
#     {
#           "id" => 3660,
#         "name" => "Polish PM",
#          "url" => "https://www.igdb.com/companies/polish-pm"
#     },
#     {
#           "id" => 3661,
#         "name" => "asrec",
#          "url" => "https://www.igdb.com/companies/asrec"
#     },
#     {
#           "id" => 3662,
#         "name" => "47 Communications",
#          "url" => "https://www.igdb.com/companies/47-communications"
#     },
#     {
#           "id" => 3663,
#         "name" => "Lunch PR",
#          "url" => "https://www.igdb.com/companies/lunch-pr"
#     },
#     {
#           "id" => 3664,
#         "name" => "The Code Works",
#          "url" => "https://www.igdb.com/companies/the-code-works"
#     },
#     {
#           "id" => 3665,
#         "name" => "King Records",
#          "url" => "https://www.igdb.com/companies/king-records"
#     },
#     {
#           "id" => 3666,
#         "name" => "A-Wave",
#          "url" => "https://www.igdb.com/companies/a-wave"
#     },
#     {
#           "id" => 3667,
#         "name" => "LOZC G. Amusements",
#          "url" => "https://www.igdb.com/companies/lozc-g-amusements"
#     },
#     {
#           "id" => 3668,
#         "name" => "Twilight",
#          "url" => "https://www.igdb.com/companies/twilight"
#     },
#     {
#           "id" => 3669,
#         "name" => "Hookstone",
#          "url" => "https://www.igdb.com/companies/hookstone"
#     },
#     {
#           "id" => 3670,
#         "name" => "Sofix",
#          "url" => "https://www.igdb.com/companies/sofix"
#     },
#     {
#           "id" => 3671,
#         "name" => "IGS",
#          "url" => "https://www.igdb.com/companies/igs"
#     },
#     {
#           "id" => 3672,
#         "name" => "Cyclone System",
#          "url" => "https://www.igdb.com/companies/cyclone-system"
#     },
#     {
#           "id" => 3673,
#         "name" => "EA Hyderabad",
#          "url" => "https://www.igdb.com/companies/ea-hyderabad"
#     },
#     {
#           "id" => 3674,
#         "name" => "Digic Pictures",
#          "url" => "https://www.igdb.com/companies/digic-pictures"
#     },
#     {
#           "id" => 3675,
#         "name" => "The Lyris Quartet",
#          "url" => "https://www.igdb.com/companies/the-lyris-quartet"
#     },
#     {
#           "id" => 3676,
#         "name" => "Albion Localisations",
#          "url" => "https://www.igdb.com/companies/albion-localisations"
#     },
#     {
#           "id" => 3677,
#         "name" => "Anakan GmbH",
#          "url" => "https://www.igdb.com/companies/anakan-gmbh"
#     },
#     {
#           "id" => 3678,
#         "name" => "Pomann Sound",
#          "url" => "https://www.igdb.com/companies/pomann-sound"
#     },
#     {
#           "id" => 3679,
#         "name" => "Mesopotamia Software",
#          "url" => "https://www.igdb.com/companies/mesopotamia-software"
#     },
#     {
#           "id" => 3680,
#         "name" => "42 Entertainment",
#          "url" => "https://www.igdb.com/companies/42-entertainment"
#     },
#     {
#           "id" => 3681,
#         "name" => "CGBot",
#          "url" => "https://www.igdb.com/companies/cgbot"
#     },
#     {
#           "id" => 3682,
#         "name" => "Digital Domain",
#          "url" => "https://www.igdb.com/companies/digital-domain"
#     },
#     {
#           "id" => 3683,
#         "name" => "Formosa Interactive",
#          "url" => "https://www.igdb.com/companies/formosa-interactive"
#     },
#     {
#           "id" => 3684,
#         "name" => "Imaginari Animation Studios",
#          "url" => "https://www.igdb.com/companies/imaginari-animation-studios"
#     },
#     {
#           "id" => 3685,
#         "name" => "Ozone",
#          "url" => "https://www.igdb.com/companies/ozone"
#     },
#     {
#           "id" => 3686,
#         "name" => "Chris Daly Glass Studio",
#          "url" => "https://www.igdb.com/companies/chris-daly-glass-studio"
#     },
#     {
#           "id" => 3688,
#         "name" => "Dinosaur Polo Club",
#          "url" => "https://www.igdb.com/companies/dinosaur-polo-club"
#     },
#     {
#           "id" => 3689,
#         "name" => "Roll7",
#          "url" => "https://www.igdb.com/companies/roll7"
#     },
#     {
#           "id" => 3690,
#         "name" => "Tectoy",
#          "url" => "https://www.igdb.com/companies/tectoy"
#     },
#     {
#           "id" => 3691,
#         "name" => "Meldac",
#          "url" => "https://www.igdb.com/companies/meldac"
#     },
#     {
#           "id" => 3692,
#         "name" => "Lenar",
#          "url" => "https://www.igdb.com/companies/lenar"
#     },
#     {
#           "id" => 3693,
#         "name" => "Infinity",
#          "url" => "https://www.igdb.com/companies/infinity"
#     },
#     {
#           "id" => 3694,
#         "name" => "NuFX",
#          "url" => "https://www.igdb.com/companies/nufx"
#     },
#     {
#           "id" => 3695,
#         "name" => "Bunch Games",
#          "url" => "https://www.igdb.com/companies/bunch-games"
#     },
#     {
#           "id" => 3696,
#         "name" => "Andreas Illiger",
#          "url" => "https://www.igdb.com/companies/andreas-illiger"
#     },
#     {
#           "id" => 3698,
#         "name" => "Loriciels",
#          "url" => "https://www.igdb.com/companies/loriciels"
#     },
#     {
#           "id" => 3699,
#         "name" => "Movie Software",
#          "url" => "https://www.igdb.com/companies/movie-software"
#     },
#     {
#           "id" => 3700,
#         "name" => "Hot B",
#          "url" => "https://www.igdb.com/companies/hot-b"
#     },
#     {
#           "id" => 3812,
#         "name" => "Synergy Voices",
#          "url" => "https://www.igdb.com/companies/synergy-voices"
#     },
#     {
#           "id" => 3813,
#         "name" => "Air Lyndhurst Studios",
#          "url" => "https://www.igdb.com/companies/air-lyndhurst-studios"
#     },
#     {
#           "id" => 3814,
#         "name" => "Soho Sound Kitchen",
#          "url" => "https://www.igdb.com/companies/soho-sound-kitchen"
#     },
#     {
#           "id" => 3815,
#         "name" => "Dhruva Interactive",
#          "url" => "https://www.igdb.com/companies/dhruva-interactive"
#     },
#     {
#           "id" => 3816,
#         "name" => "Ten24",
#          "url" => "https://www.igdb.com/companies/ten24"
#     },
#     {
#           "id" => 3817,
#         "name" => "Destructive Creations",
#          "url" => "https://www.igdb.com/companies/destructive-creations"
#     },
#     {
#           "id" => 3818,
#         "name" => "FlamingLunchBox",
#          "url" => "https://www.igdb.com/companies/flaminglunchbox"
#     },
#     {
#           "id" => 3819,
#         "name" => "Crazy Moo Games",
#          "url" => "https://www.igdb.com/companies/crazy-moo-games"
#     },
#     {
#           "id" => 3821,
#         "name" => "flippfly",
#          "url" => "https://www.igdb.com/companies/flippfly"
#     },
#     {
#           "id" => 3822,
#         "name" => "picroma",
#          "url" => "https://www.igdb.com/companies/picroma"
#     },
#     {
#           "id" => 3825,
#         "name" => "Alliance Media Holdings",
#          "url" => "https://www.igdb.com/companies/alliance-media-holdings"
#     },
#     {
#           "id" => 3826,
#         "name" => "Serious Brew",
#          "url" => "https://www.igdb.com/companies/serious-brew"
#     },
#     {
#           "id" => 3827,
#         "name" => "Serious Brew",
#          "url" => "https://www.igdb.com/companies/serious-brew--1"
#     },
#     {
#           "id" => 3830,
#         "name" => "Test3 Projects",
#          "url" => "https://www.igdb.com/companies/test3-projects"
#     },
#     {
#           "id" => 3834,
#         "name" => "Brace Yourself Games",
#          "url" => "https://www.igdb.com/companies/brace-yourself-games"
#     },
#     {
#           "id" => 3835,
#         "name" => "Brace Yourself Games",
#          "url" => "https://www.igdb.com/companies/brace-yourself-games--1"
#     },
#     {
#           "id" => 3836,
#         "name" => "devCAT",
#          "url" => "https://www.igdb.com/companies/devcat"
#     },
#     {
#           "id" => 3837,
#         "name" => "Level Up Labs",
#          "url" => "https://www.igdb.com/companies/level-up-labs"
#     },
#     {
#           "id" => 3838,
#         "name" => "Synergistic Software, Inc.",
#          "url" => "https://www.igdb.com/companies/synergistic-software-inc"
#     },
#     {
#           "id" => 3840,
#         "name" => "Jochum Skoglund",
#          "url" => "https://www.igdb.com/companies/jochum-skoglund"
#     },
#     {
#           "id" => 3841,
#         "name" => "Niklas Myrberg",
#          "url" => "https://www.igdb.com/companies/niklas-myrberg"
#     },
#     {
#           "id" => 3842,
#         "name" => "Santa Cruz games",
#          "url" => "https://www.igdb.com/companies/santa-cruz-games"
#     },
#     {
#           "id" => 3843,
#         "name" => "GR3 Project",
#          "url" => "https://www.igdb.com/companies/gr3-project"
#     },
#     {
#           "id" => 3844,
#         "name" => "Firma Studios",
#          "url" => "https://www.igdb.com/companies/firma-studios"
#     },
#     {
#           "id" => 3845,
#         "name" => "BioWare Austin",
#          "url" => "https://www.igdb.com/companies/bioware-austin"
#     },
#     {
#           "id" => 3846,
#         "name" => "Warner Bros. Post Production Services",
#          "url" => "https://www.igdb.com/companies/warner-bros-post-production-services"
#     },
#     {
#           "id" => 3847,
#         "name" => "The London Session Orchestra",
#          "url" => "https://www.igdb.com/companies/the-london-session-orchestra"
#     },
#     {
#           "id" => 3848,
#         "name" => "SPOV",
#          "url" => "https://www.igdb.com/companies/spov"
#     },
#     {
#           "id" => 2021,
#         "name" => "Sega Studio USA",
#          "url" => "https://www.igdb.com/companies/sega-studio-usa"
#     },
#     {
#           "id" => 2022,
#         "name" => "Pitbull Syndicate",
#          "url" => "https://www.igdb.com/companies/pitbull-syndicate"
#     },
#     {
#           "id" => 2023,
#         "name" => "Sony Music Entertainment Japan",
#          "url" => "https://www.igdb.com/companies/sony-music-entertainment-japan"
#     },
#     {
#           "id" => 2024,
#         "name" => "Eidetic",
#          "url" => "https://www.igdb.com/companies/eidetic"
#     },
#     {
#           "id" => 2025,
#         "name" => "Funcom Dublin Ltd.",
#          "url" => "https://www.igdb.com/companies/funcom-dublin-ltd"
#     },
#     {
#           "id" => 2027,
#         "name" => "Yuke's Future Media Creators",
#          "url" => "https://www.igdb.com/companies/yuke-s-future-media-creators"
#     },
#     {
#           "id" => 2028,
#         "name" => "DreamFactory",
#          "url" => "https://www.igdb.com/companies/dreamfactory"
#     },
#     {
#           "id" => 2029,
#         "name" => "Sugar and Rockets",
#          "url" => "https://www.igdb.com/companies/sugar-and-rockets"
#     },
#     {
#           "id" => 2030,
#         "name" => "Metro Graphics",
#          "url" => "https://www.igdb.com/companies/metro-graphics"
#     },
#     {
#           "id" => 2031,
#         "name" => "Fube Industries Ltd.",
#          "url" => "https://www.igdb.com/companies/fube-industries-ltd"
#     },
#     {
#           "id" => 2032,
#         "name" => "Tuning Electronic",
#          "url" => "https://www.igdb.com/companies/tuning-electronic"
#     },
#     {
#           "id" => 2033,
#         "name" => "Kids Station",
#          "url" => "https://www.igdb.com/companies/kids-station"
#     },
#     {
#           "id" => 2034,
#         "name" => "XS Games",
#          "url" => "https://www.igdb.com/companies/xs-games"
#     },
#     {
#           "id" => 2035,
#         "name" => "Play It Games",
#          "url" => "https://www.igdb.com/companies/play-it-games"
#     },
#     {
#           "id" => 2036,
#         "name" => "Sunrise Interactive",
#          "url" => "https://www.igdb.com/companies/sunrise-interactive"
#     },
#     {
#           "id" => 2037,
#         "name" => "Ideaworks3D",
#          "url" => "https://www.igdb.com/companies/ideaworks3d"
#     },
#     {
#           "id" => 2038,
#         "name" => "Overworks",
#          "url" => "https://www.igdb.com/companies/overworks"
#     },
#     {
#           "id" => 2039,
#         "name" => "Tommo Inc",
#          "url" => "https://www.igdb.com/companies/tommo-inc"
#     },
#     {
#           "id" => 2040,
#         "name" => "Wanadoo Edition",
#          "url" => "https://www.igdb.com/companies/wanadoo-edition"
#     },
#     {
#           "id" => 2041,
#         "name" => "Kuusou Kagaku",
#          "url" => "https://www.igdb.com/companies/kuusou-kagaku"
#     },
#     {
#           "id" => 2042,
#         "name" => "Contrail",
#          "url" => "https://www.igdb.com/companies/contrail"
#     },
#     {
#           "id" => 2043,
#         "name" => "Equinoxe",
#          "url" => "https://www.igdb.com/companies/equinoxe"
#     },
#     {
#           "id" => 2044,
#         "name" => "Check Six Games",
#          "url" => "https://www.igdb.com/companies/check-six-games"
#     },
#     {
#           "id" => 2045,
#         "name" => "LAB Rats Games",
#          "url" => "https://www.igdb.com/companies/lab-rats-games"
#     },
#     {
#           "id" => 2046,
#         "name" => "Zombie Studios",
#          "url" => "https://www.igdb.com/companies/zombie-studios"
#     },
#     {
#           "id" => 2047,
#         "name" => "Garakuta-Studios",
#          "url" => "https://www.igdb.com/companies/garakuta-studios"
#     },
#     {
#           "id" => 2048,
#         "name" => "Blue Planet Software",
#          "url" => "https://www.igdb.com/companies/blue-planet-software"
#     },
#     {
#           "id" => 2049,
#         "name" => "Konami Hawaii",
#          "url" => "https://www.igdb.com/companies/konami-hawaii"
#     },
#     {
#           "id" => 2050,
#         "name" => "Jagex Games Studio",
#          "url" => "https://www.igdb.com/companies/jagex-games-studio"
#     },
#     {
#           "id" => 2051,
#         "name" => "Hands-On Mobile",
#          "url" => "https://www.igdb.com/companies/hands-on-mobile"
#     },
#     {
#           "id" => 2052,
#         "name" => "NEC Interchannel",
#          "url" => "https://www.igdb.com/companies/nec-interchannel"
#     },
#     {
#           "id" => 2053,
#         "name" => "Eden Games",
#          "url" => "https://www.igdb.com/companies/eden-games"
#     },
#     {
#           "id" => 2054,
#         "name" => "Team Viewtiful",
#          "url" => "https://www.igdb.com/companies/team-viewtiful"
#     },
#     {
#           "id" => 2055,
#         "name" => "Clover Studio",
#          "url" => "https://www.igdb.com/companies/clover-studio"
#     },
#     {
#           "id" => 2056,
#         "name" => "NST",
#          "url" => "https://www.igdb.com/companies/nst"
#     },
#     {
#           "id" => 2058,
#         "name" => "Bunkasha",
#          "url" => "https://www.igdb.com/companies/bunkasha"
#     },
#     {
#           "id" => 2059,
#         "name" => "GenePool Software",
#          "url" => "https://www.igdb.com/companies/genepool-software"
#     },
#     {
#           "id" => 2060,
#         "name" => "Mechanic Arms",
#          "url" => "https://www.igdb.com/companies/mechanic-arms"
#     },
#     {
#           "id" => 2061,
#         "name" => "Bomico Entertainment Software",
#          "url" => "https://www.igdb.com/companies/bomico-entertainment-software"
#     },
#     {
#           "id" => 2062,
#         "name" => "7th Level",
#          "url" => "https://www.igdb.com/companies/7th-level"
#     },
#     {
#           "id" => 2063,
#         "name" => "Arzest",
#          "url" => "https://www.igdb.com/companies/arzest"
#     },
#     {
#           "id" => 2065,
#         "name" => "Escape",
#          "url" => "https://www.igdb.com/companies/escape"
#     },
#     {
#           "id" => 2066,
#         "name" => "Nova Games",
#          "url" => "https://www.igdb.com/companies/nova-games"
#     },
#     {
#           "id" => 2067,
#         "name" => "Dempa Shimbunsha",
#          "url" => "https://www.igdb.com/companies/dempa-shimbunsha"
#     },
#     {
#           "id" => 2068,
#         "name" => "Magnin and Associates",
#          "url" => "https://www.igdb.com/companies/magnin-and-associates"
#     },
#     {
#           "id" => 2069,
#         "name" => "Jordan Mechner",
#          "url" => "https://www.igdb.com/companies/jordan-mechner"
#     },
#     {
#           "id" => 2070,
#         "name" => "Douglas E. Smith",
#          "url" => "https://www.igdb.com/companies/douglas-e-smith"
#     },
#     {
#           "id" => 3903,
#         "name" => "BioWare Montreal",
#          "url" => "https://www.igdb.com/companies/bioware-montreal"
#     },
#     {
#           "id" => 3904,
#         "name" => "Towa Chiki",
#          "url" => "https://www.igdb.com/companies/towa-chiki"
#     },
#     {
#           "id" => 3905,
#         "name" => "Little Worlds Studio",
#          "url" => "https://www.igdb.com/companies/little-worlds-studio"
#     },
#     {
#           "id" => 3907,
#         "name" => "Creative Patterns",
#          "url" => "https://www.igdb.com/companies/creative-patterns"
#     },
#     {
#           "id" => 3908,
#         "name" => "Picsoft Studio",
#          "url" => "https://www.igdb.com/companies/picsoft-studio"
#     },
#     {
#           "id" => 3909,
#         "name" => "Nigoro",
#          "url" => "https://www.igdb.com/companies/nigoro"
#     },
#     {
#           "id" => 3910,
#         "name" => "Pygmy Studio",
#          "url" => "https://www.igdb.com/companies/pygmy-studio"
#     },
#     {
#           "id" => 3912,
#         "name" => "Asterizm Corporation",
#          "url" => "https://www.igdb.com/companies/asterizm-corporation"
#     },
#     {
#           "id" => 3913,
#         "name" => "EnjoyUp Games",
#          "url" => "https://www.igdb.com/companies/enjoyup-games"
#     },
#     {
#           "id" => 3914,
#         "name" => "Playbox",
#          "url" => "https://www.igdb.com/companies/playbox"
#     },
#     {
#           "id" => 3915,
#         "name" => "Vortex Media Arts",
#          "url" => "https://www.igdb.com/companies/vortex-media-arts"
#     },
#     {
#           "id" => 3916,
#         "name" => "Playskool",
#          "url" => "https://www.igdb.com/companies/playskool"
#     },
#     {
#           "id" => 3917,
#         "name" => "Media Station",
#          "url" => "https://www.igdb.com/companies/media-station"
#     },
#     {
#           "id" => 3920,
#         "name" => "Toho",
#          "url" => "https://www.igdb.com/companies/toho"
#     },
#     {
#           "id" => 3921,
#         "name" => "Blendo Games",
#          "url" => "https://www.igdb.com/companies/blendo-games"
#     },
#     {
#           "id" => 3922,
#         "name" => "Red Rocket Games",
#          "url" => "https://www.igdb.com/companies/red-rocket-games"
#     },
#     {
#           "id" => 3924,
#         "name" => "Six by nine",
#          "url" => "https://www.igdb.com/companies/six-by-nine"
#     },
#     {
#           "id" => 3925,
#         "name" => "Nick Jr. Interactive",
#          "url" => "https://www.igdb.com/companies/nick-jr-interactive"
#     },
#     {
#           "id" => 3926,
#         "name" => "Game Factory",
#          "url" => "https://www.igdb.com/companies/game-factory"
#     },
#     {
#           "id" => 3927,
#         "name" => "Viacom International",
#          "url" => "https://www.igdb.com/companies/viacom-international"
#     },
#     {
#           "id" => 3928,
#         "name" => "Ubisoft Chengdu",
#          "url" => "https://www.igdb.com/companies/ubisoft-chengdu"
#     },
#     {
#           "id" => 3929,
#         "name" => "Les services d'urgence Medic",
#          "url" => "https://www.igdb.com/companies/les-services-durgence-medic"
#     },
#     {
#           "id" => 3930,
#         "name" => "Hotel 2 Tango",
#          "url" => "https://www.igdb.com/companies/hotel-2-tango"
#     },
#     {
#           "id" => 3931,
#         "name" => "Studio de I'Est",
#          "url" => "https://www.igdb.com/companies/studio-de-iest"
#     },
#     {
#           "id" => 3932,
#         "name" => "Paul Johnston Studio",
#          "url" => "https://www.igdb.com/companies/paul-johnston-studio"
#     },
#     {
#           "id" => 3933,
#         "name" => "Studio 451 Inc.",
#          "url" => "https://www.igdb.com/companies/studio-451-inc"
#     },
#     {
#           "id" => 2088,
#         "name" => "Brash Entertainment",
#          "url" => "https://www.igdb.com/companies/brash-entertainment"
#     },
#     {
#           "id" => 3935,
#         "name" => "Studio Technicolor",
#          "url" => "https://www.igdb.com/companies/studio-technicolor"
#     },
#     {
#           "id" => 3936,
#         "name" => "Wave London",
#          "url" => "https://www.igdb.com/companies/wave-london"
#     },
#     {
#           "id" => 2090,
#         "name" => "Vir2L Studios",
#          "url" => "https://www.igdb.com/companies/vir2l-studios"
#     },
#     {
#           "id" => 3937,
#         "name" => "mouse-power GmbH",
#          "url" => "https://www.igdb.com/companies/mouse-power-gmbh"
#     },
#     {
#           "id" => 2092,
#         "name" => "Imageepoch",
#          "url" => "https://www.igdb.com/companies/imageepoch"
#     },
#     {
#           "id" => 3941,
#         "name" => "Scillex",
#          "url" => "https://www.igdb.com/companies/scillex"
#     },
#     {
#           "id" => 2094,
#         "name" => "Transmission Games",
#          "url" => "https://www.igdb.com/companies/transmission-games"
#     },
#     {
#           "id" => 3942,
#         "name" => "entalize",
#          "url" => "https://www.igdb.com/companies/entalize"
#     },
#     {
#           "id" => 2096,
#         "name" => "Lightstorm Entertainment",
#          "url" => "https://www.igdb.com/companies/lightstorm-entertainment"
#     },
#     {
#           "id" => 2055,
#         "name" => "Clover Studio",
#          "url" => "https://www.igdb.com/companies/clover-studio"
#     },
#     {
#           "id" => 2056,
#         "name" => "NST",
#          "url" => "https://www.igdb.com/companies/nst"
#     },
#     {
#           "id" => 2058,
#         "name" => "Bunkasha",
#          "url" => "https://www.igdb.com/companies/bunkasha"
#     },
#     {
#           "id" => 2059,
#         "name" => "GenePool Software",
#          "url" => "https://www.igdb.com/companies/genepool-software"
#     },
#     {
#           "id" => 2060,
#         "name" => "Mechanic Arms",
#          "url" => "https://www.igdb.com/companies/mechanic-arms"
#     },
#     {
#           "id" => 2061,
#         "name" => "Bomico Entertainment Software",
#          "url" => "https://www.igdb.com/companies/bomico-entertainment-software"
#     },
#     {
#           "id" => 2062,
#         "name" => "7th Level",
#          "url" => "https://www.igdb.com/companies/7th-level"
#     },
#     {
#           "id" => 2063,
#         "name" => "Arzest",
#          "url" => "https://www.igdb.com/companies/arzest"
#     },
#     {
#           "id" => 2065,
#         "name" => "Escape",
#          "url" => "https://www.igdb.com/companies/escape"
#     },
#     {
#           "id" => 2066,
#         "name" => "Nova Games",
#          "url" => "https://www.igdb.com/companies/nova-games"
#     },
#     {
#           "id" => 2067,
#         "name" => "Dempa Shimbunsha",
#          "url" => "https://www.igdb.com/companies/dempa-shimbunsha"
#     },
#     {
#           "id" => 2068,
#         "name" => "Magnin and Associates",
#          "url" => "https://www.igdb.com/companies/magnin-and-associates"
#     },
#     {
#           "id" => 2069,
#         "name" => "Jordan Mechner",
#          "url" => "https://www.igdb.com/companies/jordan-mechner"
#     },
#     {
#           "id" => 2070,
#         "name" => "Douglas E. Smith",
#          "url" => "https://www.igdb.com/companies/douglas-e-smith"
#     },
#     {
#           "id" => 3903,
#         "name" => "BioWare Montreal",
#          "url" => "https://www.igdb.com/companies/bioware-montreal"
#     },
#     {
#           "id" => 3904,
#         "name" => "Towa Chiki",
#          "url" => "https://www.igdb.com/companies/towa-chiki"
#     },
#     {
#           "id" => 3905,
#         "name" => "Little Worlds Studio",
#          "url" => "https://www.igdb.com/companies/little-worlds-studio"
#     },
#     {
#           "id" => 3907,
#         "name" => "Creative Patterns",
#          "url" => "https://www.igdb.com/companies/creative-patterns"
#     },
#     {
#           "id" => 3908,
#         "name" => "Picsoft Studio",
#          "url" => "https://www.igdb.com/companies/picsoft-studio"
#     },
#     {
#           "id" => 3909,
#         "name" => "Nigoro",
#          "url" => "https://www.igdb.com/companies/nigoro"
#     },
#     {
#           "id" => 3910,
#         "name" => "Pygmy Studio",
#          "url" => "https://www.igdb.com/companies/pygmy-studio"
#     },
#     {
#           "id" => 3912,
#         "name" => "Asterizm Corporation",
#          "url" => "https://www.igdb.com/companies/asterizm-corporation"
#     },
#     {
#           "id" => 3913,
#         "name" => "EnjoyUp Games",
#          "url" => "https://www.igdb.com/companies/enjoyup-games"
#     },
#     {
#           "id" => 3914,
#         "name" => "Playbox",
#          "url" => "https://www.igdb.com/companies/playbox"
#     },
#     {
#           "id" => 3915,
#         "name" => "Vortex Media Arts",
#          "url" => "https://www.igdb.com/companies/vortex-media-arts"
#     },
#     {
#           "id" => 3916,
#         "name" => "Playskool",
#          "url" => "https://www.igdb.com/companies/playskool"
#     },
#     {
#           "id" => 3917,
#         "name" => "Media Station",
#          "url" => "https://www.igdb.com/companies/media-station"
#     },
#     {
#           "id" => 3920,
#         "name" => "Toho",
#          "url" => "https://www.igdb.com/companies/toho"
#     },
#     {
#           "id" => 3921,
#         "name" => "Blendo Games",
#          "url" => "https://www.igdb.com/companies/blendo-games"
#     },
#     {
#           "id" => 3922,
#         "name" => "Red Rocket Games",
#          "url" => "https://www.igdb.com/companies/red-rocket-games"
#     },
#     {
#           "id" => 3924,
#         "name" => "Six by nine",
#          "url" => "https://www.igdb.com/companies/six-by-nine"
#     },
#     {
#           "id" => 3925,
#         "name" => "Nick Jr. Interactive",
#          "url" => "https://www.igdb.com/companies/nick-jr-interactive"
#     },
#     {
#           "id" => 3926,
#         "name" => "Game Factory",
#          "url" => "https://www.igdb.com/companies/game-factory"
#     },
#     {
#           "id" => 3927,
#         "name" => "Viacom International",
#          "url" => "https://www.igdb.com/companies/viacom-international"
#     },
#     {
#           "id" => 3928,
#         "name" => "Ubisoft Chengdu",
#          "url" => "https://www.igdb.com/companies/ubisoft-chengdu"
#     },
#     {
#           "id" => 3929,
#         "name" => "Les services d'urgence Medic",
#          "url" => "https://www.igdb.com/companies/les-services-durgence-medic"
#     },
#     {
#           "id" => 3930,
#         "name" => "Hotel 2 Tango",
#          "url" => "https://www.igdb.com/companies/hotel-2-tango"
#     },
#     {
#           "id" => 3931,
#         "name" => "Studio de I'Est",
#          "url" => "https://www.igdb.com/companies/studio-de-iest"
#     },
#     {
#           "id" => 3932,
#         "name" => "Paul Johnston Studio",
#          "url" => "https://www.igdb.com/companies/paul-johnston-studio"
#     },
#     {
#           "id" => 3933,
#         "name" => "Studio 451 Inc.",
#          "url" => "https://www.igdb.com/companies/studio-451-inc"
#     },
#     {
#           "id" => 2088,
#         "name" => "Brash Entertainment",
#          "url" => "https://www.igdb.com/companies/brash-entertainment"
#     },
#     {
#           "id" => 3935,
#         "name" => "Studio Technicolor",
#          "url" => "https://www.igdb.com/companies/studio-technicolor"
#     },
#     {
#           "id" => 3936,
#         "name" => "Wave London",
#          "url" => "https://www.igdb.com/companies/wave-london"
#     },
#     {
#           "id" => 2090,
#         "name" => "Vir2L Studios",
#          "url" => "https://www.igdb.com/companies/vir2l-studios"
#     },
#     {
#           "id" => 3937,
#         "name" => "mouse-power GmbH",
#          "url" => "https://www.igdb.com/companies/mouse-power-gmbh"
#     },
#     {
#           "id" => 2092,
#         "name" => "Imageepoch",
#          "url" => "https://www.igdb.com/companies/imageepoch"
#     },
#     {
#           "id" => 3941,
#         "name" => "Scillex",
#          "url" => "https://www.igdb.com/companies/scillex"
#     },
#     {
#           "id" => 2094,
#         "name" => "Transmission Games",
#          "url" => "https://www.igdb.com/companies/transmission-games"
#     },
#     {
#           "id" => 3942,
#         "name" => "entalize",
#          "url" => "https://www.igdb.com/companies/entalize"
#     },
#     {
#           "id" => 2096,
#         "name" => "Lightstorm Entertainment",
#          "url" => "https://www.igdb.com/companies/lightstorm-entertainment"
#     },
#     {
#           "id" => 3944,
#         "name" => "Latis Global Communications",
#          "url" => "https://www.igdb.com/companies/latis-global-communications"
#     },
#     {
#           "id" => 3945,
#         "name" => "Ubisoft Limited",
#          "url" => "https://www.igdb.com/companies/ubisoft-limited"
#     },
#     {
#           "id" => 3946,
#         "name" => "#30 Jutz Zollern Workroom",
#          "url" => "https://www.igdb.com/companies/number-30-jutz-zollern-workroom"
#     },
#     {
#           "id" => 2098,
#         "name" => "SingleTrac Entertainment Technologies",
#          "url" => "https://www.igdb.com/companies/singletrac-entertainment-technologies"
#     },
#     {
#           "id" => 3948,
#         "name" => "Cybersoft",
#          "url" => "https://www.igdb.com/companies/cybersoft"
#     },
#     {
#           "id" => 2099,
#         "name" => "Silicon Studio",
#          "url" => "https://www.igdb.com/companies/silicon-studio"
#     },
#     {
#           "id" => 3950,
#         "name" => "Blue Turtle",
#          "url" => "https://www.igdb.com/companies/blue-turtle"
#     },
#     {
#           "id" => 2100,
#         "name" => "UFO Interactive Software",
#          "url" => "https://www.igdb.com/companies/ufo-interactive-software"
#     },
#     {
#           "id" => 3952,
#         "name" => "ISCO",
#          "url" => "https://www.igdb.com/companies/isco"
#     },
#     {
#           "id" => 2102,
#         "name" => "Zoo Games",
#          "url" => "https://www.igdb.com/companies/zoo-games"
#     },
#     {
#           "id" => 3954,
#         "name" => "RSP",
#          "url" => "https://www.igdb.com/companies/rsp"
#     },
#     {
#           "id" => 2103,
#         "name" => "Aksys Games",
#          "url" => "https://www.igdb.com/companies/aksys-games"
#     },
#     {
#           "id" => 2105,
#         "name" => "Oberon Interactive",
#          "url" => "https://www.igdb.com/companies/oberon-interactive"
#     },
#     {
#           "id" => 3958,
#         "name" => "Bandai Namco Games",
#          "url" => "https://www.igdb.com/companies/bandai-namco-games"
#     },
#     {
#           "id" => 3959,
#         "name" => "Sos",
#          "url" => "https://www.igdb.com/companies/sos"
#     },
#     {
#           "id" => 2109,
#         "name" => "Icon Games Entertainment",
#          "url" => "https://www.igdb.com/companies/icon-games-entertainment"
#     },
#     {
#           "id" => 3961,
#         "name" => "SoftClub",
#          "url" => "https://www.igdb.com/companies/softclub"
#     },
#     {
#           "id" => 2110,
#         "name" => "Happy Happening",
#          "url" => "https://www.igdb.com/companies/happy-happening"
#     },
#     {
#           "id" => 2111,
#         "name" => "Quotix Software",
#          "url" => "https://www.igdb.com/companies/quotix-software"
#     },
#     {
#           "id" => 3963,
#         "name" => "Sinfonia Pop Orchestra",
#          "url" => "https://www.igdb.com/companies/sinfonia-pop-orchestra"
#     },
#     {
#           "id" => 2117,
#         "name" => "Gamenauts",
#          "url" => "https://www.igdb.com/companies/gamenauts"
#     },
#     {
#           "id" => 2118,
#         "name" => "Oxygen Interactive Software",
#          "url" => "https://www.igdb.com/companies/oxygen-interactive-software"
#     },
#     {
#           "id" => 3966,
#         "name" => "ESABU",
#          "url" => "https://www.igdb.com/companies/esabu"
#     },
#     {
#           "id" => 3967,
#         "name" => "Nord Media Films Studio",
#          "url" => "https://www.igdb.com/companies/nord-media-films-studio"
#     },
#     {
#           "id" => 2120,
#         "name" => "Grounding Inc",
#          "url" => "https://www.igdb.com/companies/grounding-inc"
#     },
#     {
#           "id" => 3969,
#         "name" => "East West",
#          "url" => "https://www.igdb.com/companies/east-west"
#     },
#     {
#           "id" => 3970,
#         "name" => "globalvoX",
#          "url" => "https://www.igdb.com/companies/globalvox"
#     },
#     {
#           "id" => 2123,
#         "name" => "Foxconn Technology Group",
#          "url" => "https://www.igdb.com/companies/foxconn-technology-group"
#     },
#     {
#           "id" => 3973,
#         "name" => "The Bratislawa Symphnoy Choir",
#          "url" => "https://www.igdb.com/companies/the-bratislawa-symphnoy-choir"
#     },
#     {
#           "id" => 2125,
#         "name" => "Toontraxx",
#          "url" => "https://www.igdb.com/companies/toontraxx"
#     },
#     {
#           "id" => 2126,
#         "name" => "Frontline Studios",
#          "url" => "https://www.igdb.com/companies/frontline-studios"
#     },
#     {
#           "id" => 2127,
#         "name" => "Zuxxes",
#          "url" => "https://www.igdb.com/companies/zuxxes"
#     },
#     {
#           "id" => 2128,
#         "name" => "Ware Interactive",
#          "url" => "https://www.igdb.com/companies/ware-interactive"
#     },
#     {
#           "id" => 3976,
#         "name" => "An.X",
#          "url" => "https://www.igdb.com/companies/an-dot-x"
#     },
#     {
#           "id" => 3977,
#         "name" => "Konami Digital Entertainment B.V.",
#          "url" => "https://www.igdb.com/companies/konami-digital-entertainment-bv"
#     },
#     {
#           "id" => 2132,
#         "name" => "Bold Games",
#          "url" => "https://www.igdb.com/companies/bold-games"
#     },
#     {
#           "id" => 2135,
#         "name" => "HyberDevbox Japan",
#          "url" => "https://www.igdb.com/companies/hyberdevbox-japan"
#     },
#     {
#           "id" => 3983,
#         "name" => "Forcewick Sound Design",
#          "url" => "https://www.igdb.com/companies/forcewick-sound-design"
#     },
#     {
#           "id" => 3984,
#         "name" => "Nashville Music Scoring Orchestra",
#          "url" => "https://www.igdb.com/companies/nashville-music-scoring-orchestra"
#     },
#     {
#           "id" => 3985,
#         "name" => "Film Score LLC",
#          "url" => "https://www.igdb.com/companies/film-score-llc"
#     },
#     {
#           "id" => 3986,
#         "name" => "Arriba Entertainment",
#          "url" => "https://www.igdb.com/companies/arriba-entertainment"
#     },
#     {
#           "id" => 3987,
#         "name" => "Designware Co. Ltd.",
#          "url" => "https://www.igdb.com/companies/designware-co-ltd"
#     },
#     {
#           "id" => 3988,
#         "name" => "ZeniMax Australia",
#          "url" => "https://www.igdb.com/companies/zenimax-australia"
#     },
#     {
#           "id" => 3989,
#         "name" => "Playcast-media",
#          "url" => "https://www.igdb.com/companies/playcast-media"
#     },
#     {
#           "id" => 3990,
#         "name" => "A10",
#          "url" => "https://www.igdb.com/companies/a10"
#     },
#     {
#           "id" => 3991,
#         "name" => "Russel",
#          "url" => "https://www.igdb.com/companies/russel"
#     },
#     {
#           "id" => 3992,
#         "name" => "Ion Storm Support",
#          "url" => "https://www.igdb.com/companies/ion-storm-support"
#     },
#     {
#           "id" => 3993,
#         "name" => "IMGS, INC.",
#          "url" => "https://www.igdb.com/companies/imgs-inc"
#     },
#     {
#           "id" => 3995,
#         "name" => "Eidos Interactive Europe",
#          "url" => "https://www.igdb.com/companies/eidos-interactive-europe"
#     },
#     {
#           "id" => 3996,
#         "name" => "Experimental Gameplay",
#          "url" => "https://www.igdb.com/companies/experimental-gameplay"
#     },
#     {
#           "id" => 3997,
#         "name" => "Gamebase Co., Ltd.",
#          "url" => "https://www.igdb.com/companies/gamebase-co-dot-ltd"
#     },
#     {
#           "id" => 3998,
#         "name" => "Gamebase USA",
#          "url" => "https://www.igdb.com/companies/gamebase-usa"
#     },
#     {
#           "id" => 3999,
#         "name" => "WOMB Music",
#          "url" => "https://www.igdb.com/companies/womb-music"
#     },
#     {
#           "id" => 4000,
#         "name" => "Bug-Tracker INC.",
#          "url" => "https://www.igdb.com/companies/bug-tracker-inc"
#     },
#     {
#           "id" => 4004,
#         "name" => "Sega Germany",
#          "url" => "https://www.igdb.com/companies/sega-germany"
#     },
#     {
#           "id" => 4006,
#         "name" => "Sega Benelux",
#          "url" => "https://www.igdb.com/companies/sega-benelux"
#     },
#     {
#           "id" => 4008,
#         "name" => "Sega Australia",
#          "url" => "https://www.igdb.com/companies/sega-australia"
#     },
#     {
#           "id" => 4009,
#         "name" => "Sanritsu",
#          "url" => "https://www.igdb.com/companies/sanritsu"
#     },
#     {
#           "id" => 4010,
#         "name" => "Macrospace",
#          "url" => "https://www.igdb.com/companies/macrospace"
#     },
#     {
#           "id" => 4011,
#         "name" => "Lost Boys Games",
#          "url" => "https://www.igdb.com/companies/lost-boys-games"
#     },
#     {
#           "id" => 4012,
#         "name" => "Innocuous Games",
#          "url" => "https://www.igdb.com/companies/innocuous-games"
#     },
#     {
#           "id" => 4013,
#         "name" => "Active Enterprises",
#          "url" => "https://www.igdb.com/companies/active-enterprises"
#     },
#     {
#           "id" => 4014,
#         "name" => "Vblank Entertainment",
#          "url" => "https://www.igdb.com/companies/vblank-entertainment"
#     },
#     {
#           "id" => 4015,
#         "name" => "Recreational Brainware",
#          "url" => "https://www.igdb.com/companies/recreational-brainware"
#     },
#     {
#           "id" => 4016,
#         "name" => "Minor Key Games",
#          "url" => "https://www.igdb.com/companies/minor-key-games"
#     },
#     {
#           "id" => 4017,
#         "name" => "Earbash Inc.",
#          "url" => "https://www.igdb.com/companies/earbash-inc"
#     },
#     {
#           "id" => 4018,
#         "name" => "The Research Centaur",
#          "url" => "https://www.igdb.com/companies/the-research-centaur"
#     },
#     {
#           "id" => 4019,
#         "name" => "VMC Game Labs, Montreal",
#          "url" => "https://www.igdb.com/companies/vmc-game-labs-montreal"
#     },
#     {
#           "id" => 4020,
#         "name" => "Trias Digital",
#          "url" => "https://www.igdb.com/companies/trias-digital"
#     },
#     {
#           "id" => 4021,
#         "name" => "Eastworks",
#          "url" => "https://www.igdb.com/companies/eastworks"
#     },
#     {
#           "id" => 4022,
#         "name" => "Happy Feet Foley",
#          "url" => "https://www.igdb.com/companies/happy-feet-foley"
#     },
#     {
#           "id" => 4023,
#         "name" => "Guildhall Leisure Services Ltd.",
#          "url" => "https://www.igdb.com/companies/guildhall-leisure-services-ltd"
#     },
#     {
#           "id" => 4026,
#         "name" => "Gakken",
#          "url" => "https://www.igdb.com/companies/gakken"
#     },
#     {
#           "id" => 4027,
#         "name" => "Focus Multimedia",
#          "url" => "https://www.igdb.com/companies/focus-multimedia"
#     },
#     {
#           "id" => 4028,
#         "name" => "Citizen Software",
#          "url" => "https://www.igdb.com/companies/citizen-software"
#     },
#     {
#           "id" => 4029,
#         "name" => "Xilam",
#          "url" => "https://www.igdb.com/companies/xilam"
#     },
#     {
#           "id" => 4030,
#         "name" => "Mobliss",
#          "url" => "https://www.igdb.com/companies/mobliss"
#     },
#     {
#           "id" => 4031,
#         "name" => "Darkblack",
#          "url" => "https://www.igdb.com/companies/darkblack"
#     },
#     {
#           "id" => 4032,
#         "name" => "Sapient Corporation",
#          "url" => "https://www.igdb.com/companies/sapient-corporation"
#     },
#     {
#           "id" => 4033,
#         "name" => "GL33K, LLC",
#          "url" => "https://www.igdb.com/companies/gl33k-llc"
#     },
#     {
#           "id" => 4035,
#         "name" => "Polyassets United Inc.",
#          "url" => "https://www.igdb.com/companies/polyassets-united-inc"
#     },
#     {
#           "id" => 4036,
#         "name" => "SomaTone Audio",
#          "url" => "https://www.igdb.com/companies/somatone-audio"
#     },
#     {
#           "id" => 4037,
#         "name" => "Kylin Magical Image",
#          "url" => "https://www.igdb.com/companies/kylin-magical-image"
#     },
#     {
#           "id" => 4038,
#         "name" => "Little Red Zombies",
#          "url" => "https://www.igdb.com/companies/little-red-zombies"
#     },
#     {
#           "id" => 4039,
#         "name" => "Xi'an Panish Informantion Technology",
#          "url" => "https://www.igdb.com/companies/xian-panish-informantion-technology"
#     },
#     {
#           "id" => 4040,
#         "name" => "Snark Co. Ltd",
#          "url" => "https://www.igdb.com/companies/snark-co-ltd"
#     },
#     {
#           "id" => 4041,
#         "name" => "The Third Floor Inc.",
#          "url" => "https://www.igdb.com/companies/the-third-floor-inc"
#     },
#     {
#           "id" => 4042,
#         "name" => "TZWART Software",
#          "url" => "https://www.igdb.com/companies/tzwart-software"
#     },
#     {
#           "id" => 4043,
#         "name" => "Quantic Labs",
#          "url" => "https://www.igdb.com/companies/quantic-labs"
#     },
#     {
#           "id" => 4044,
#         "name" => "PitStop Productions",
#          "url" => "https://www.igdb.com/companies/pitstop-productions"
#     },
#     {
#           "id" => 4045,
#         "name" => "TecMagik",
#          "url" => "https://www.igdb.com/companies/tecmagik"
#     },
#     {
#           "id" => 4046,
#         "name" => "Manley and Associates Inc",
#          "url" => "https://www.igdb.com/companies/manley-and-associates-inc"
#     },
#     {
#           "id" => 4047,
#         "name" => "Wanderlust Interactive",
#          "url" => "https://www.igdb.com/companies/wanderlust-interactive"
#     },
#     {
#           "id" => 4048,
#         "name" => "Super Empire",
#          "url" => "https://www.igdb.com/companies/super-empire"
#     },
#     {
#           "id" => 4049,
#         "name" => "Ravensburger Interactive Media",
#          "url" => "https://www.igdb.com/companies/ravensburger-interactive-media"
#     },
#     {
#           "id" => 4050,
#         "name" => "DePaul University students",
#          "url" => "https://www.igdb.com/companies/depaul-university-students"
#     },
#     {
#           "id" => 4051,
#         "name" => "Kokopeli Digital Studios",
#          "url" => "https://www.igdb.com/companies/kokopeli-digital-studios"
#     },
#     {
#           "id" => 4052,
#         "name" => "Viacom Entertainment Group",
#          "url" => "https://www.igdb.com/companies/viacom-entertainment-group"
#     },
#     {
#           "id" => 4053,
#         "name" => "Corbis Images",
#          "url" => "https://www.igdb.com/companies/corbis-images"
#     },
#     {
#           "id" => 4054,
#         "name" => "Shooting Star",
#          "url" => "https://www.igdb.com/companies/shooting-star"
#     },
#     {
#           "id" => 4055,
#         "name" => "Synapse Films",
#          "url" => "https://www.igdb.com/companies/synapse-films"
#     },
#     {
#           "id" => 4056,
#         "name" => "Sessing Music Services",
#          "url" => "https://www.igdb.com/companies/sessing-music-services"
#     },
#     {
#           "id" => 4057,
#         "name" => "PTD Guideline Compliance",
#          "url" => "https://www.igdb.com/companies/ptd-guideline-compliance"
#     },
#     {
#           "id" => 4058,
#         "name" => "Mario Kart Band",
#          "url" => "https://www.igdb.com/companies/mario-kart-band"
#     },
#     {
#           "id" => 4059,
#         "name" => "Necrophone Games",
#          "url" => "https://www.igdb.com/companies/necrophone-games"
#     },
#     {
#           "id" => 4060,
#         "name" => "Adult Swim",
#          "url" => "https://www.igdb.com/companies/adult-swim"
#     },
#     {
#           "id" => 4061,
#         "name" => "Bojan Brbora",
#          "url" => "https://www.igdb.com/companies/bojan-brbora"
#     },
#     {
#           "id" => 4062,
#         "name" => "4PM GAME",
#          "url" => "https://www.igdb.com/companies/4pm-game"
#     },
#     {
#           "id" => 4063,
#         "name" => "Limasse Five",
#          "url" => "https://www.igdb.com/companies/limasse-five"
#     },
#     {
#           "id" => 4064,
#         "name" => "Superflat Games",
#          "url" => "https://www.igdb.com/companies/superflat-games"
#     },
#     {
#           "id" => 4065,
#         "name" => "Curve Studios",
#          "url" => "https://www.igdb.com/companies/curve-studios"
#     },
#     {
#           "id" => 4066,
#         "name" => "Equilibrium",
#          "url" => "https://www.igdb.com/companies/equilibrium"
#     },
#     {
#           "id" => 4067,
#         "name" => "WJS Design",
#          "url" => "https://www.igdb.com/companies/wjs-design"
#     },
#     {
#           "id" => 4068,
#         "name" => "Infinitap Games",
#          "url" => "https://www.igdb.com/companies/infinitap-games"
#     },
#     {
#           "id" => 4069,
#         "name" => "Derek Yu",
#          "url" => "https://www.igdb.com/companies/derek-yu"
#     },
#     {
#           "id" => 4070,
#         "name" => "Eyebrow Interactive",
#          "url" => "https://www.igdb.com/companies/eyebrow-interactive"
#     },
#     {
#           "id" => 4071,
#         "name" => "Bruno R. Marcos",
#          "url" => "https://www.igdb.com/companies/bruno-r-marcos"
#     },
#     {
#           "id" => 4072,
#         "name" => "LSP",
#          "url" => "https://www.igdb.com/companies/lsp"
#     },
#     {
#           "id" => 4073,
#         "name" => "Similis",
#          "url" => "https://www.igdb.com/companies/similis"
#     },
#     {
#           "id" => 4074,
#         "name" => "TNX Music Recordings",
#          "url" => "https://www.igdb.com/companies/tnx-music-recordings"
#     },
#     {
#           "id" => 4075,
#         "name" => "Software Projects",
#          "url" => "https://www.igdb.com/companies/software-projects"
#     },
#     {
#           "id" => 4076,
#         "name" => "Tynesoft",
#          "url" => "https://www.igdb.com/companies/tynesoft"
#     },
#     {
#           "id" => 4077,
#         "name" => "Software Project",
#          "url" => "https://www.igdb.com/companies/software-project"
#     },
#     {
#           "id" => 4078,
#         "name" => "Experis",
#          "url" => "https://www.igdb.com/companies/experis"
#     },
#     {
#           "id" => 4079,
#         "name" => "Bristol/London Music Production Unit",
#          "url" => "https://www.igdb.com/companies/bristol-slash-london-music-production-unit"
#     },
#     {
#           "id" => 4080,
#         "name" => "Los Angles/ Seattle/ Tokyo Music Production Unit",
#          "url" => "https://www.igdb.com/companies/los-angles-slash-seattle-slash-tokyo-music-production-unit"
#     },
#     {
#           "id" => 4081,
#         "name" => "Cynergy Systems Inc",
#          "url" => "https://www.igdb.com/companies/cynergy-systems-inc"
#     },
#     {
#           "id" => 4082,
#         "name" => "The Sequence Group",
#          "url" => "https://www.igdb.com/companies/the-sequence-group"
#     },
#     {
#           "id" => 4083,
#         "name" => "PlayStation C.A.M.P.",
#          "url" => "https://www.igdb.com/companies/playstation-camp"
#     },
#     {
#           "id" => 4084,
#         "name" => "Zener Works Inc.",
#          "url" => "https://www.igdb.com/companies/zener-works-inc"
#     },
#     {
#           "id" => 4085,
#         "name" => "Bacteria Inc.",
#          "url" => "https://www.igdb.com/companies/bacteria-inc"
#     },
#     {
#           "id" => 4086,
#         "name" => "Otogi LLC",
#          "url" => "https://www.igdb.com/companies/otogi-llc"
#     },
#     {
#           "id" => 4087,
#         "name" => "Swing",
#          "url" => "https://www.igdb.com/companies/swing"
#     },
#     {
#           "id" => 4088,
#         "name" => "Masatsugu Shinozaki Group",
#          "url" => "https://www.igdb.com/companies/masatsugu-shinozaki-group"
#     },
#     {
#           "id" => 4089,
#         "name" => "Disastercake",
#          "url" => "https://www.igdb.com/companies/disastercake"
#     },
#     {
#           "id" => 4090,
#         "name" => "Havas Interactive",
#          "url" => "https://www.igdb.com/companies/havas-interactive"
#     },
#     {
#           "id" => 4091,
#         "name" => "PQube",
#          "url" => "https://www.igdb.com/companies/pqube--1"
#     },
#     {
#           "id" => 4093,
#         "name" => "H2 Interactive",
#          "url" => "https://www.igdb.com/companies/h2-interactive"
#     },
#     {
#           "id" => 4095,
#         "name" => "Kouyousha",
#          "url" => "https://www.igdb.com/companies/kouyousha"
#     },
#     {
#           "id" => 4098,
#         "name" => "Bootleg",
#          "url" => "https://www.igdb.com/companies/bootleg"
#     },
#     {
#           "id" => 4099,
#         "name" => "Open Corp",
#          "url" => "https://www.igdb.com/companies/open-corp"
#     },
#     {
#           "id" => 4100,
#         "name" => "Aventurine SA",
#          "url" => "https://www.igdb.com/companies/aventurine-sa"
#     },
#     {
#           "id" => 4101,
#         "name" => "Aventurine",
#          "url" => "https://www.igdb.com/companies/aventurine"
#     },
#     {
#           "id" => 4102,
#         "name" => "Aventurine SA",
#          "url" => "https://www.igdb.com/companies/aventurine-sa--1"
#     },
#     {
#           "id" => 4103,
#         "name" => "SRD Co., Ltd.",
#          "url" => "https://www.igdb.com/companies/srd-co-dot-ltd"
#     },
#     {
#           "id" => 4104,
#         "name" => "Mox Co., Ltd.",
#          "url" => "https://www.igdb.com/companies/mox-co-dot-ltd"
#     },
#     {
#           "id" => 4105,
#         "name" => "Kenproduction",
#          "url" => "https://www.igdb.com/companies/kenproduction"
#     },
#     {
#           "id" => 4106,
#         "name" => "Light Weight",
#          "url" => "https://www.igdb.com/companies/light-weight"
#     },
#     {
#           "id" => 4107,
#         "name" => "SCE Australia",
#          "url" => "https://www.igdb.com/companies/sce-australia"
#     },
#     {
#           "id" => 4108,
#         "name" => "Wild Shadow Studios",
#          "url" => "https://www.igdb.com/companies/wild-shadow-studios"
#     },
#     {
#           "id" => 4109,
#         "name" => "Kabam",
#          "url" => "https://www.igdb.com/companies/kabam"
#     },
#     {
#           "id" => 4110,
#         "name" => "Micronics",
#          "url" => "https://www.igdb.com/companies/micronics"
#     },
#     {
#           "id" => 4111,
#         "name" => "Midway Studios San Diego",
#          "url" => "https://www.igdb.com/companies/midway-studios-san-diego"
#     },
#     {
#           "id" => 4112,
#         "name" => "Soft Bank",
#          "url" => "https://www.igdb.com/companies/soft-bank"
#     },
#     {
#           "id" => 4113,
#         "name" => "Art Data Interactive",
#          "url" => "https://www.igdb.com/companies/art-data-interactive"
#     },
#     {
#           "id" => 4114,
#         "name" => "Bashou House",
#          "url" => "https://www.igdb.com/companies/bashou-house"
#     },
#     {
#           "id" => 4115,
#         "name" => "Lion Entertainment",
#          "url" => "https://www.igdb.com/companies/lion-entertainment"
#     },
#     {
#           "id" => 4116,
#         "name" => "Digital Café",
#          "url" => "https://www.igdb.com/companies/digital-cafe"
#     },
#     {
#           "id" => 4117,
#         "name" => "Ralston-Purina",
#          "url" => "https://www.igdb.com/companies/ralston-purina"
#     },
#     {
#           "id" => 4118,
#         "name" => "SoMa Play",
#          "url" => "https://www.igdb.com/companies/soma-play"
#     },
#     {
#           "id" => 4120,
#         "name" => "AcademySoft",
#          "url" => "https://www.igdb.com/companies/academysoft"
#     },
#     {
#           "id" => 4121,
#         "name" => "Tandy",
#          "url" => "https://www.igdb.com/companies/tandy"
#     },
#     {
#           "id" => 4122,
#         "name" => "DR Korea",
#          "url" => "https://www.igdb.com/companies/dr-korea"
#     },
#     {
#           "id" => 4123,
#         "name" => "Alexey Pajitnov",
#          "url" => "https://www.igdb.com/companies/alexey-pajitnov"
#     },
#     {
#           "id" => 4124,
#         "name" => "Vadim Gerasimov",
#          "url" => "https://www.igdb.com/companies/vadim-gerasimov"
#     },
#     {
#           "id" => 4125,
#         "name" => "Elorg",
#          "url" => "https://www.igdb.com/companies/elorg"
#     },
#     {
#           "id" => 4126,
#         "name" => "Andromeda Software",
#          "url" => "https://www.igdb.com/companies/andromeda-software"
#     },
#     {
#           "id" => 4127,
#         "name" => "Sphere",
#          "url" => "https://www.igdb.com/companies/sphere"
#     },
#     {
#           "id" => 4128,
#         "name" => "ZTC Systems",
#          "url" => "https://www.igdb.com/companies/ztc-systems"
#     },
#     {
#           "id" => 4129,
#         "name" => "Project Just",
#          "url" => "https://www.igdb.com/companies/project-just"
#     },
#     {
#           "id" => 4130,
#         "name" => "The Developers of Incredible Power",
#          "url" => "https://www.igdb.com/companies/the-developers-of-incredible-power"
#     },
#     {
#           "id" => 4131,
#         "name" => "Mobila Interactive",
#          "url" => "https://www.igdb.com/companies/mobila-interactive"
#     },
#     {
#           "id" => 4132,
#         "name" => "icculus.org",
#          "url" => "https://www.igdb.com/companies/icculus-dot-org"
#     },
#     {
#           "id" => 4133,
#         "name" => "11 bit studios",
#          "url" => "https://www.igdb.com/companies/11-bit-studios"
#     },
#     {
#           "id" => 4134,
#         "name" => "Upper One Games",
#          "url" => "https://www.igdb.com/companies/upper-one-games"
#     },
#     {
#           "id" => 4135,
#         "name" => "E-Line Media",
#          "url" => "https://www.igdb.com/companies/e-line-media"
#     },
#     {
#           "id" => 4136,
#         "name" => "River Cresco",
#          "url" => "https://www.igdb.com/companies/river-cresco"
#     },
#     {
#           "id" => 4137,
#         "name" => "Rebecca Heineman",
#          "url" => "https://www.igdb.com/companies/rebecca-heineman"
#     },
#     {
#           "id" => 4138,
#         "name" => "Main Street Publishing",
#          "url" => "https://www.igdb.com/companies/main-street-publishing"
#     },
#     {
#           "id" => 4139,
#         "name" => "John Sands Electronics",
#          "url" => "https://www.igdb.com/companies/john-sands-electronics"
#     },
#     {
#           "id" => 4140,
#         "name" => "Logitec",
#          "url" => "https://www.igdb.com/companies/logitec"
#     },
#     {
#           "id" => 4141,
#         "name" => "UIEvolution",
#          "url" => "https://www.igdb.com/companies/uievolution"
#     },
#     {
#           "id" => 4142,
#         "name" => "2 Player Productions",
#          "url" => "https://www.igdb.com/companies/2-player-productions"
#     },
#     {
#           "id" => 4143,
#         "name" => "Dracogen Inc.",
#          "url" => "https://www.igdb.com/companies/dracogen-inc"
#     },
#     {
#           "id" => 4144,
#         "name" => "Instant Kingdom",
#          "url" => "https://www.igdb.com/companies/instant-kingdom"
#     },
#     {
#           "id" => 4145,
#         "name" => "Basilisk Games",
#          "url" => "https://www.igdb.com/companies/basilisk-games"
#     },
#     {
#           "id" => 4146,
#         "name" => "Hollywood Studio Symphony",
#          "url" => "https://www.igdb.com/companies/hollywood-studio-symphony"
#     },
#     {
#           "id" => 4147,
#         "name" => "Lunarch Studios",
#          "url" => "https://www.igdb.com/companies/lunarch-studios"
#     },
#     {
#           "id" => 4148,
#         "name" => "EA Romania",
#          "url" => "https://www.igdb.com/companies/ea-romania"
#     },
#     {
#           "id" => 4149,
#         "name" => "Chrom Studio",
#          "url" => "https://www.igdb.com/companies/chrom-studio"
#     },
#     {
#           "id" => 4150,
#         "name" => "OF3D",
#          "url" => "https://www.igdb.com/companies/of3d"
#     },
#     {
#           "id" => 4151,
#         "name" => "Speradoft Inc.",
#          "url" => "https://www.igdb.com/companies/speradoft-inc"
#     },
#     {
#           "id" => 4152,
#         "name" => "Typodermic Inc.",
#          "url" => "https://www.igdb.com/companies/typodermic-inc"
#     },
#     {
#           "id" => 4153,
#         "name" => "Georgrify",
#          "url" => "https://www.igdb.com/companies/georgrify"
#     },
#     {
#           "id" => 4154,
#         "name" => "Geomerics Ltc.",
#          "url" => "https://www.igdb.com/companies/geomerics-ltc"
#     },
#     {
#           "id" => 4155,
#         "name" => "Middlewar Licensesn in Salesforce, FYI",
#          "url" => "https://www.igdb.com/companies/middlewar-licensesn-in-salesforce-fyi"
#     },
#     {
#           "id" => 4156,
#         "name" => "OC3",
#          "url" => "https://www.igdb.com/companies/oc3"
#     },
#     {
#           "id" => 4157,
#         "name" => "Failbetter Games Ltd.",
#          "url" => "https://www.igdb.com/companies/failbetter-games-ltd"
#     },
#     {
#           "id" => 4158,
#         "name" => "Gskinner.com",
#          "url" => "https://www.igdb.com/companies/gskinner-dot-com"
#     },
#     {
#           "id" => 4159,
#         "name" => "Lone Shark Games",
#          "url" => "https://www.igdb.com/companies/lone-shark-games"
#     },
#     {
#           "id" => 4160,
#         "name" => "Metaverse Modsquad",
#          "url" => "https://www.igdb.com/companies/metaverse-modsquad"
#     },
#     {
#           "id" => 4161,
#         "name" => "Pulp Studios Inc.",
#          "url" => "https://www.igdb.com/companies/pulp-studios-inc"
#     },
#     {
#           "id" => 4162,
#         "name" => "RED The Agency",
#          "url" => "https://www.igdb.com/companies/red-the-agency"
#     },
#     {
#           "id" => 4163,
#         "name" => "Seven Tales Inc.",
#          "url" => "https://www.igdb.com/companies/seven-tales-inc"
#     },
#     {
#           "id" => 4164,
#         "name" => "Sperasoft Inc.",
#          "url" => "https://www.igdb.com/companies/sperasoft-inc"
#     },
#     {
#           "id" => 4165,
#         "name" => "Work at Play Media Labs",
#          "url" => "https://www.igdb.com/companies/work-at-play-media-labs"
#     },
#     {
#           "id" => 4166,
#         "name" => "GameSim Technologies",
#          "url" => "https://www.igdb.com/companies/gamesim-technologies"
#     },
#     {
#           "id" => 4167,
#         "name" => "Johnny Blerot Sound",
#          "url" => "https://www.igdb.com/companies/johnny-blerot-sound"
#     },
#     {
#           "id" => 4168,
#         "name" => "Studio Center Total Productions",
#          "url" => "https://www.igdb.com/companies/studio-center-total-productions"
#     },
#     {
#           "id" => 4169,
#         "name" => "Rynn & Dante",
#          "url" => "https://www.igdb.com/companies/rynn-and-dante"
#     },
#     {
#           "id" => 4170,
#         "name" => "FilmOasis Inc.",
#          "url" => "https://www.igdb.com/companies/filmoasis-inc"
#     },
#     {
#           "id" => 4171,
#         "name" => "Omni Interactive Audio",
#          "url" => "https://www.igdb.com/companies/omni-interactive-audio"
#     },
#     {
#           "id" => 4172,
#         "name" => "ReelFX Creative Studios",
#          "url" => "https://www.igdb.com/companies/reelfx-creative-studios"
#     },
#     {
#           "id" => 7243,
#         "name" => "Tumblehead-Animation Studios",
#          "url" => "https://www.igdb.com/companies/tumblehead-animation-studios"
#     },
#     {
#           "id" => 7244,
#         "name" => "DQ Entertainment International",
#          "url" => "https://www.igdb.com/companies/dq-entertainment-international"
#     },
#     {
#           "id" => 7245,
#         "name" => "Bay Area Sound",
#          "url" => "https://www.igdb.com/companies/bay-area-sound"
#     },
#     {
#           "id" => 7246,
#         "name" => "Adobe Systems",
#          "url" => "https://www.igdb.com/companies/adobe-systems"
#     },
#     {
#           "id" => 7247,
#         "name" => "Macromedia",
#          "url" => "https://www.igdb.com/companies/macromedia"
#     },
#     {
#           "id" => 7248,
#         "name" => "Red House Studios",
#          "url" => "https://www.igdb.com/companies/red-house-studios"
#     },
#     {
#           "id" => 7249,
#         "name" => "Electric Image",
#          "url" => "https://www.igdb.com/companies/electric-image"
#     },
#     {
#           "id" => 7250,
#         "name" => "Naiad Entertainment",
#          "url" => "https://www.igdb.com/companies/naiad-entertainment"
#     },
#     {
#           "id" => 7251,
#         "name" => "Dekovir Entertainment",
#          "url" => "https://www.igdb.com/companies/dekovir-entertainment"
#     },
#     {
#           "id" => 7252,
#         "name" => "Black Maple Games",
#          "url" => "https://www.igdb.com/companies/black-maple-games"
#     },
#     {
#           "id" => 7254,
#         "name" => "Impulze",
#          "url" => "https://www.igdb.com/companies/impulze"
#     },
#     {
#           "id" => 7255,
#         "name" => "Golden Goblins",
#          "url" => "https://www.igdb.com/companies/golden-goblins"
#     },
#     {
#           "id" => 7256,
#         "name" => "Valhalla Cats",
#          "url" => "https://www.igdb.com/companies/valhalla-cats"
#     },
#     {
#           "id" => 7258,
#         "name" => "Electrocoin",
#          "url" => "https://www.igdb.com/companies/electrocoin"
#     },
#     {
#           "id" => 7259,
#         "name" => "Magic Pants",
#          "url" => "https://www.igdb.com/companies/magic-pants"
#     },
#     {
#           "id" => 7261,
#         "name" => "Guerrilla Cambridge",
#          "url" => "https://www.igdb.com/companies/guerrilla-cambridge"
#     },
#     {
#           "id" => 7262,
#         "name" => "Sterling Silver Software",
#          "url" => "https://www.igdb.com/companies/sterling-silver-software"
#     },
#     {
#           "id" => 7263,
#         "name" => "Team Cherry",
#          "url" => "https://www.igdb.com/companies/team-cherry"
#     },
#     {
#           "id" => 7264,
#         "name" => "Ascon",
#          "url" => "https://www.igdb.com/companies/ascon"
#     },
#     {
#           "id" => 7265,
#         "name" => "Defcom",
#          "url" => "https://www.igdb.com/companies/defcom"
#     },
#     {
#           "id" => 7266,
#         "name" => "EAS Procovision",
#          "url" => "https://www.igdb.com/companies/eas-procovision"
#     },
#     {
#           "id" => 7267,
#         "name" => "Acid Software",
#          "url" => "https://www.igdb.com/companies/acid-software"
#     },
#     {
#           "id" => 7268,
#         "name" => "Global Software",
#          "url" => "https://www.igdb.com/companies/global-software"
#     },
#     {
#           "id" => 7269,
#         "name" => "Intelek",
#          "url" => "https://www.igdb.com/companies/intelek"
#     },
#     {
#           "id" => 7270,
#         "name" => "BOMS Computer Games",
#          "url" => "https://www.igdb.com/companies/boms-computer-games"
#     },
#     {
#           "id" => 7271,
#         "name" => "Leisure Genius",
#          "url" => "https://www.igdb.com/companies/leisure-genius"
#     },
#     {
#           "id" => 7272,
#         "name" => "Screen 7 Entertainment - duplicate",
#          "url" => "https://www.igdb.com/companies/screen-7-entertainment-duplicate"
#     },
#     {
#           "id" => 7273,
#         "name" => "Phoenix Game Studio",
#          "url" => "https://www.igdb.com/companies/phoenix-game-studio"
#     },
#     {
#           "id" => 7274,
#         "name" => "Supervision",
#          "url" => "https://www.igdb.com/companies/supervision"
#     },
#     {
#           "id" => 7275,
#         "name" => "The Hidden",
#          "url" => "https://www.igdb.com/companies/the-hidden"
#     },
#     {
#           "id" => 7276,
#         "name" => "The Deep End Games",
#          "url" => "https://www.igdb.com/companies/the-deep-end-games"
#     },
#     {
#           "id" => 7278,
#         "name" => "Alan Hazelden",
#          "url" => "https://www.igdb.com/companies/alan-hazelden"
#     },
#     {
#           "id" => 7279,
#         "name" => "Benjamin Davis",
#          "url" => "https://www.igdb.com/companies/benjamin-davis"
#     },
#     {
#           "id" => 7280,
#         "name" => "Tic Toc Games",
#          "url" => "https://www.igdb.com/companies/tic-toc-games"
#     },
#     {
#           "id" => 7281,
#         "name" => "Red Earth Recording Studios",
#          "url" => "https://www.igdb.com/companies/red-earth-recording-studios"
#     },
#     {
#           "id" => 7282,
#         "name" => "Associated Production Music",
#          "url" => "https://www.igdb.com/companies/associated-production-music"
#     },
#     {
#           "id" => 7283,
#         "name" => "Centennia",
#          "url" => "https://www.igdb.com/companies/centennia"
#     },
#     {
#           "id" => 7284,
#         "name" => "Animal Arts",
#          "url" => "https://www.igdb.com/companies/animal-arts"
#     },
#     {
#           "id" => 7285,
#         "name" => "Rosalyn Catering",
#          "url" => "https://www.igdb.com/companies/rosalyn-catering"
#     },
#     {
#           "id" => 7286,
#         "name" => "Cinerents West",
#          "url" => "https://www.igdb.com/companies/cinerents-west"
#     },
#     {
#           "id" => 7287,
#         "name" => "Steadi Systems",
#          "url" => "https://www.igdb.com/companies/steadi-systems"
#     },
#     {
#           "id" => 7288,
#         "name" => "Monaco Labs",
#          "url" => "https://www.igdb.com/companies/monaco-labs"
#     },
#     {
#           "id" => 7289,
#         "name" => "Varitel San Francisco",
#          "url" => "https://www.igdb.com/companies/varitel-san-francisco"
#     },
#     {
#           "id" => 7290,
#         "name" => "On Time/Off Line",
#          "url" => "https://www.igdb.com/companies/on-time-slash-off-line"
#     },
#     {
#           "id" => 7291,
#         "name" => "Litigation",
#          "url" => "https://www.igdb.com/companies/litigation"
#     },
#     {
#           "id" => 7292,
#         "name" => "Technologies",
#          "url" => "https://www.igdb.com/companies/technologies"
#     },
#     {
#           "id" => 7293,
#         "name" => "American Zoetrope",
#          "url" => "https://www.igdb.com/companies/american-zoetrope"
#     },
#     {
#           "id" => 7294,
#         "name" => "Poolside Studios",
#          "url" => "https://www.igdb.com/companies/poolside-studios"
#     },
#     {
#           "id" => 7295,
#         "name" => "Outpost San Francisco",
#          "url" => "https://www.igdb.com/companies/outpost-san-francisco"
#     },
#     {
#           "id" => 7296,
#         "name" => "Forte Music Studios",
#          "url" => "https://www.igdb.com/companies/forte-music-studios"
#     },
#     {
#           "id" => 7297,
#         "name" => "MuHa Games",
#          "url" => "https://www.igdb.com/companies/muha-games"
#     },
#     {
#           "id" => 7298,
#         "name" => "Freehold Games",
#          "url" => "https://www.igdb.com/companies/freehold-games"
#     },
#     {
#           "id" => 7300,
#         "name" => "Pinkapp games",
#          "url" => "https://www.igdb.com/companies/pinkapp-games"
#     },
#     {
#           "id" => 7301,
#         "name" => "Arsys Software",
#          "url" => "https://www.igdb.com/companies/arsys-software"
#     },
#     {
#           "id" => 7302,
#         "name" => "Michaelsoft Inc.",
#          "url" => "https://www.igdb.com/companies/michaelsoft-inc"
#     },
#     {
#           "id" => 7303,
#         "name" => "Hue Forest Entertainmen",
#          "url" => "https://www.igdb.com/companies/hue-forest-entertainmen"
#     },
#     {
#           "id" => 7304,
#         "name" => "Sakuratei Motion Capture",
#          "url" => "https://www.igdb.com/companies/sakuratei-motion-capture"
#     },
#     {
#           "id" => 7305,
#         "name" => "Mix Core Inc.",
#          "url" => "https://www.igdb.com/companies/mix-core-inc"
#     },
#     {
#           "id" => 7306,
#         "name" => "Nova",
#          "url" => "https://www.igdb.com/companies/nova"
#     },
#     {
#           "id" => 7307,
#         "name" => "Digifusion Inc.",
#          "url" => "https://www.igdb.com/companies/digifusion-inc"
#     },
#     {
#           "id" => 7308,
#         "name" => "Tokyo Itoi Shigesato Office",
#          "url" => "https://www.igdb.com/companies/tokyo-itoi-shigesato-office"
#     },
#     {
#           "id" => 7309,
#         "name" => "Glass Eye Pix",
#          "url" => "https://www.igdb.com/companies/glass-eye-pix"
#     },
#     {
#           "id" => 7310,
#         "name" => "EPK",
#          "url" => "https://www.igdb.com/companies/epk"
#     },
#     {
#           "id" => 7311,
#         "name" => "Robotic Dream Studios",
#          "url" => "https://www.igdb.com/companies/robotic-dream-studios"
#     },
#     {
#           "id" => 7312,
#         "name" => "Industrial Arts",
#          "url" => "https://www.igdb.com/companies/industrial-arts"
#     },
#     {
#           "id" => 7313,
#         "name" => "FLY Films",
#          "url" => "https://www.igdb.com/companies/fly-films"
#     },
#     {
#           "id" => 7314,
#         "name" => "Kalloc Studios",
#          "url" => "https://www.igdb.com/companies/kalloc-studios"
#     },
#     {
#           "id" => 7315,
#         "name" => "The Monk Studio Company",
#          "url" => "https://www.igdb.com/companies/the-monk-studio-company"
#     },
#     {
#           "id" => 7316,
#         "name" => "Nuke Digital & Technology",
#          "url" => "https://www.igdb.com/companies/nuke-digital-and-technology"
#     },
#     {
#           "id" => 7317,
#         "name" => "Uni-Digital",
#          "url" => "https://www.igdb.com/companies/uni-digital"
#     },
#     {
#           "id" => 7318,
#         "name" => "Virus Studios",
#          "url" => "https://www.igdb.com/companies/virus-studios"
#     },
#     {
#           "id" => 7319,
#         "name" => "Star Maid Games",
#          "url" => "https://www.igdb.com/companies/star-maid-games"
#     },
#     {
#           "id" => 7320,
#         "name" => "Super Awesome Hyper Dimensional Mega Team",
#          "url" => "https://www.igdb.com/companies/super-awesome-hyper-dimensional-mega-team"
#     },
#     {
#           "id" => 7321,
#         "name" => "Big Wheels Studio",
#          "url" => "https://www.igdb.com/companies/big-wheels-studio"
#     },
#     {
#           "id" => 7322,
#         "name" => "The Blade Runner Partnership",
#          "url" => "https://www.igdb.com/companies/the-blade-runner-partnership"
#     },
#     {
#           "id" => 7323,
#         "name" => "Icon Art",
#          "url" => "https://www.igdb.com/companies/icon-art"
#     },
#     {
#           "id" => 7324,
#         "name" => "Wavegroup Sound",
#          "url" => "https://www.igdb.com/companies/wavegroup-sound"
#     },
#     {
#           "id" => 7325,
#         "name" => "Atrophy Studios",
#          "url" => "https://www.igdb.com/companies/atrophy-studios"
#     },
#     {
#           "id" => 7326,
#         "name" => "Petrified Productions",
#          "url" => "https://www.igdb.com/companies/petrified-productions"
#     },
#     {
#           "id" => 7327,
#         "name" => "Perceptive Sound Design",
#          "url" => "https://www.igdb.com/companies/perceptive-sound-design"
#     },
#     {
#           "id" => 7328,
#         "name" => "Advantage Audio",
#          "url" => "https://www.igdb.com/companies/advantage-audio"
#     },
#     {
#           "id" => 7329,
#         "name" => "BLT & Associates",
#          "url" => "https://www.igdb.com/companies/blt-and-associates"
#     },
#     {
#           "id" => 7330,
#         "name" => "DivX",
#          "url" => "https://www.igdb.com/companies/divx"
#     },
#     {
#           "id" => 7331,
#         "name" => "Filmakademie Baden-Württemberg",
#          "url" => "https://www.igdb.com/companies/filmakademie-baden-wurttemberg"
#     },
#     {
#           "id" => 7332,
#         "name" => "Stöckel GmbH",
#          "url" => "https://www.igdb.com/companies/stockel-gmbh"
#     },
#     {
#           "id" => 7333,
#         "name" => "RC Productions",
#          "url" => "https://www.igdb.com/companies/rc-productions"
#     },
#     {
#           "id" => 7334,
#         "name" => "Attaction",
#          "url" => "https://www.igdb.com/companies/attaction"
#     },
#     {
#           "id" => 7335,
#         "name" => "BVT Games Fund III Dynamic GmbH & Co. KG",
#          "url" => "https://www.igdb.com/companies/bvt-games-fund-iii-dynamic-gmbh-and-co-kg"
#     },
#     {
#         "id" => 7336,
#         "name" => "Trinigy GmbH",
#         "url" => "https://www.igdb.com/companies/trinigy-gmbh"
#     },
#     {
#         "id" => 7337,
#         "name" => "KARAKTER",
#         "url" => "https://www.igdb.com/companies/karakter"
#     },
#     {
#           "id" => 7338,
#         "name" => "ELIGAME Studio",
#          "url" => "https://www.igdb.com/companies/eligame-studio"
#     },
#     {
#           "id" => 7339,
#         "name" => "Luedke Productions",
#          "url" => "https://www.igdb.com/companies/luedke-productions"
#     },
#     {
#           "id" => 7340,
#         "name" => "Try2 Games",
#          "url" => "https://www.igdb.com/companies/try2-games"
#     },
#     {
#           "id" => 7341,
#         "name" => "Virgin Lands",
#          "url" => "https://www.igdb.com/companies/virgin-lands"
#     },
#     {
#           "id" => 7342,
#         "name" => "Ulysses Games",
#          "url" => "https://www.igdb.com/companies/ulysses-games"
#     },
#     {
#           "id" => 7343,
#         "name" => "iBeta",
#          "url" => "https://www.igdb.com/companies/ibeta"
#     },
#     {
#           "id" => 7344,
#         "name" => "Mosaik Studios",
#          "url" => "https://www.igdb.com/companies/mosaik-studios"
#     },
#     {
#           "id" => 7345,
#         "name" => "DLM Consulting",
#          "url" => "https://www.igdb.com/companies/dlm-consulting"
#     },
#     {
#           "id" => 7346,
#         "name" => "Staatskapelle Halle",
#          "url" => "https://www.igdb.com/companies/staatskapelle-halle"
#     },
#     {
#           "id" => 7347,
#         "name" => "Genuin Philharmonic Choir",
#          "url" => "https://www.igdb.com/companies/genuin-philharmonic-choir"
#     },
#     {
#           "id" => 7348,
#         "name" => "Team57",
#          "url" => "https://www.igdb.com/companies/team57"
#     },
#     {
#           "id" => 7349,
#         "name" => "304000 Medienkreatioen",
#          "url" => "https://www.igdb.com/companies/304000-medienkreatioen"
#     },
#     {
#           "id" => 7350,
#         "name" => "Churoku Service",
#          "url" => "https://www.igdb.com/companies/churoku-service"
#     },
#     {
#           "id" => 7351,
#         "name" => "Art Quest",
#          "url" => "https://www.igdb.com/companies/art-quest"
#     },
#     {
#           "id" => 7352,
#         "name" => "Robot",
#          "url" => "https://www.igdb.com/companies/robot"
#     },
#     {
#           "id" => 7353,
#         "name" => "Wild Brain",
#          "url" => "https://www.igdb.com/companies/wild-brain"
#     },
#     {
#           "id" => 7354,
#         "name" => "Image AspectZ",
#          "url" => "https://www.igdb.com/companies/image-aspectz"
#     },
#     {
#           "id" => 7355,
#         "name" => "Arquebuse",
#          "url" => "https://www.igdb.com/companies/arquebuse"
#     },
#     {
#           "id" => 7356,
#         "name" => "TEAM Entertainment",
#          "url" => "https://www.igdb.com/companies/team-entertainment"
#     },
#     {
#           "id" => 7357,
#         "name" => "Sound Inn",
#          "url" => "https://www.igdb.com/companies/sound-inn"
#     },
#     {
#           "id" => 7358,
#         "name" => "Warner Music Recording Studio",
#          "url" => "https://www.igdb.com/companies/warner-music-recording-studio"
#     },
#     {
#           "id" => 7359,
#         "name" => "Unicon Products Inc.",
#          "url" => "https://www.igdb.com/companies/unicon-products-inc"
#     },
#     {
#           "id" => 7360,
#         "name" => "Sawano",
#          "url" => "https://www.igdb.com/companies/sawano"
#     },
#     {
#           "id" => 7361,
#         "name" => "Bean Pod Corp.",
#          "url" => "https://www.igdb.com/companies/bean-pod-corp"
#     },
#     {
#           "id" => 7362,
#         "name" => "Alpha Stunts",
#          "url" => "https://www.igdb.com/companies/alpha-stunts"
#     },
#     {
#           "id" => 7363,
#         "name" => "Big Fighter Project",
#          "url" => "https://www.igdb.com/companies/big-fighter-project"
#     },
#     {
#           "id" => 7364,
#         "name" => "Syncretic Media",
#          "url" => "https://www.igdb.com/companies/syncretic-media"
#     },
#     {
#           "id" => 7365,
#         "name" => "TSP Inc.",
#          "url" => "https://www.igdb.com/companies/tsp-inc"
#     },
#     {
#           "id" => 7366,
#         "name" => "Zepher Inc.",
#          "url" => "https://www.igdb.com/companies/zepher-inc"
#     },
#     {
#           "id" => 7367,
#         "name" => "Garyu Corporation",
#          "url" => "https://www.igdb.com/companies/garyu-corporation"
#     },
#     {
#           "id" => 5223,
#         "name" => "Kirin Entertainment",
#          "url" => "https://www.igdb.com/companies/kirin-entertainment"
#     },
#     {
#           "id" => 5224,
#         "name" => "Deckpoint Studio",
#          "url" => "https://www.igdb.com/companies/deckpoint-studio"
#     },
#     {
#           "id" => 5225,
#         "name" => "Pyro Mobile",
#          "url" => "https://www.igdb.com/companies/pyro-mobile"
#     },
#     {
#           "id" => 5226,
#         "name" => "ZeptoLab",
#          "url" => "https://www.igdb.com/companies/zeptolab"
#     },
#     {
#           "id" => 5227,
#         "name" => "Brain Bug",
#          "url" => "https://www.igdb.com/companies/brain-bug"
#     },
#     {
#           "id" => 5228,
#         "name" => "Humble Hearts",
#          "url" => "https://www.igdb.com/companies/humble-hearts"
#     },
#     {
#         "id" => 5230,
#         "name" => "Marc Graye Voice Over Recording Studios",
#         "url" => "https://www.igdb.com/companies/marc-graye-voice-over-recording-studios"
#     },
#     {
#           "id" => 5231,
#         "name" => "Morris Creative Services",
#          "url" => "https://www.igdb.com/companies/morris-creative-services"
#     },
#     {
#           "id" => 5232,
#         "name" => "North Hollywood Sound",
#          "url" => "https://www.igdb.com/companies/north-hollywood-sound"
#     },
#     {
#           "id" => 5233,
#         "name" => "NYAV Post",
#          "url" => "https://www.igdb.com/companies/nyav-post"
#     },
#     {
#           "id" => 5234,
#         "name" => "Presence Studios",
#          "url" => "https://www.igdb.com/companies/presence-studios"
#     },
#     {
#           "id" => 5235,
#         "name" => "The Block House",
#          "url" => "https://www.igdb.com/companies/the-block-house"
#     },
#     {
#           "id" => 5236,
#         "name" => "The Voice Experts",
#          "url" => "https://www.igdb.com/companies/the-voice-experts"
#     },
#     {
#           "id" => 5237,
#         "name" => "Synthesis Milan",
#          "url" => "https://www.igdb.com/companies/synthesis-milan"
#     },
#     {
#           "id" => 5238,
#         "name" => "Periscope Studio",
#          "url" => "https://www.igdb.com/companies/periscope-studio"
#     },
#     {
#           "id" => 5239,
#         "name" => "Synthesis Madrid",
#          "url" => "https://www.igdb.com/companies/synthesis-madrid"
#     },
#     {
#           "id" => 5240,
#         "name" => "Krysalide",
#          "url" => "https://www.igdb.com/companies/krysalide"
#     },
#     {
#           "id" => 5241,
#         "name" => "3Point Studios",
#          "url" => "https://www.igdb.com/companies/3point-studios"
#     },
#     [ 1] {
#           "id" => 5242,
#         "name" => "Voodoo Highway",
#          "url" => "https://www.igdb.com/companies/voodoo-highway"
#     },
#     [ 2] {
#           "id" => 5243,
#         "name" => "The Sound Department",
#          "url" => "https://www.igdb.com/companies/the-sound-department"
#     },
#     [ 3] {
#           "id" => 5244,
#         "name" => "Magic Lamp Studios",
#          "url" => "https://www.igdb.com/companies/magic-lamp-studios"
#     },
#     [ 4] {
#           "id" => 5245,
#         "name" => "Stidges",
#          "url" => "https://www.igdb.com/companies/stidges"
#     },
#     [ 5] {
#           "id" => 5246,
#         "name" => "Budapest Art Orchestra",
#          "url" => "https://www.igdb.com/companies/budapest-art-orchestra"
#     },
#     [ 6] {
#           "id" => 5247,
#         "name" => "East Connection Music Recording",
#          "url" => "https://www.igdb.com/companies/east-connection-music-recording"
#     },
#     [ 7] {
#           "id" => 5248,
#         "name" => "Dark Horse Comics",
#          "url" => "https://www.igdb.com/companies/dark-horse-comics"
#     },
#     [ 8] {
#           "id" => 5249,
#         "name" => "Hidden Gems Games",
#          "url" => "https://www.igdb.com/companies/hidden-gems-games"
#     },
#     [ 9] {
#           "id" => 5250,
#         "name" => "Aegon Games",
#          "url" => "https://www.igdb.com/companies/aegon-games"
#     },
#     [10] {
#           "id" => 5251,
#         "name" => "InsGames",
#          "url" => "https://www.igdb.com/companies/insgames"
#     },
#     [11] {
#           "id" => 5253,
#         "name" => "Streko Graphics",
#          "url" => "https://www.igdb.com/companies/streko-graphics"
#     },
#     [12] {
#           "id" => 5254,
#         "name" => "ClockStone Studios",
#          "url" => "https://www.igdb.com/companies/clockstone-studios"
#     },
#     [13] {
#           "id" => 5255,
#         "name" => "Remar Games",
#          "url" => "https://www.igdb.com/companies/remar-games"
#     },
#     [14] {
#           "id" => 5256,
#         "name" => "Key17 Games",
#          "url" => "https://www.igdb.com/companies/key17-games"
#     },
#     [15] {
#           "id" => 5259,
#         "name" => "Halycon Media",
#          "url" => "https://www.igdb.com/companies/halycon-media"
#     },
#     [16] {
#           "id" => 5260,
#         "name" => "llamasoft",
#          "url" => "https://www.igdb.com/companies/llamasoft"
#     },
#     [17] {
#           "id" => 5261,
#         "name" => "Elecom",
#          "url" => "https://www.igdb.com/companies/elecom"
#     },
#     [18] {
#           "id" => 5262,
#         "name" => "DigitalDNA Games LLC",
#          "url" => "https://www.igdb.com/companies/digitaldna-games-llc"
#     },
#     [19] {
#           "id" => 5264,
#         "name" => "The Indie Forge",
#          "url" => "https://www.igdb.com/companies/the-indie-forge"
#     },
#     [20] {
#           "id" => 5267,
#         "name" => "Colossal Games",
#          "url" => "https://www.igdb.com/companies/colossal-games"
#     },
#     [21] {
#           "id" => 5268,
#         "name" => "Spotkin",
#          "url" => "https://www.igdb.com/companies/spotkin"
#     },
#     [22] {
#           "id" => 5269,
#         "name" => "Nerdook Productions",
#          "url" => "https://www.igdb.com/companies/nerdook-productions"
#     },
#     [23] {
#           "id" => 7369,
#         "name" => "IJO Inc.",
#          "url" => "https://www.igdb.com/companies/ijo-inc"
#     },
#     [24] {
#           "id" => 5273,
#         "name" => "Zenith Blue",
#          "url" => "https://www.igdb.com/companies/zenith-blue"
#     },
#     [25] {
#           "id" => 5274,
#         "name" => "Grundislav Games",
#          "url" => "https://www.igdb.com/companies/grundislav-games"
#     },
#     [26] {
#           "id" => 5275,
#         "name" => "Edge Case Games Ltd.",
#          "url" => "https://www.igdb.com/companies/edge-case-games-ltd"
#     },
#     [27] {
#           "id" => 7371,
#         "name" => "L.C. Sound Services",
#          "url" => "https://www.igdb.com/companies/lc-sound-services"
#     },
#     [28] {
#           "id" => 7373,
#         "name" => "KeKKe Corporation",
#          "url" => "https://www.igdb.com/companies/kekke-corporation"
#     },
#     [29] {
#           "id" => 5286,
#         "name" => "Plastic Reality Technologies",
#          "url" => "https://www.igdb.com/companies/plastic-reality-technologies"
#     },
#     [30] {
#           "id" => 7375,
#         "name" => "Production Ace",
#          "url" => "https://www.igdb.com/companies/production-ace"
#     },
#     [31] {
#           "id" => 5288,
#         "name" => "Double Zero One Zero",
#          "url" => "https://www.igdb.com/companies/double-zero-one-zero"
#     },
#     [32] {
#           "id" => 5289,
#         "name" => "IndiePub",
#          "url" => "https://www.igdb.com/companies/indiepub"
#     },
#     [33] {
#           "id" => 5290,
#         "name" => "Subatomic Studios LLC",
#          "url" => "https://www.igdb.com/companies/subatomic-studios-llc"
#     },
#     [34] {
#           "id" => 5291,
#         "name" => "Sakevisual",
#          "url" => "https://www.igdb.com/companies/sakevisual"
#     },
#     [35] {
#           "id" => 5292,
#         "name" => "KCEO",
#          "url" => "https://www.igdb.com/companies/kceo"
#     },
#     [36] {
#           "id" => 5293,
#         "name" => "Pwnee Studios",
#          "url" => "https://www.igdb.com/companies/pwnee-studios"
#     },
#     [37] {
#           "id" => 5294,
#         "name" => "Die Gute Fabrik",
#          "url" => "https://www.igdb.com/companies/die-gute-fabrik"
#     },
#     [38] {
#           "id" => 5296,
#         "name" => "Power Up Audio",
#          "url" => "https://www.igdb.com/companies/power-up-audio"
#     },
#     [39] {
#           "id" => 5297,
#         "name" => "Eruption Entertainment",
#          "url" => "https://www.igdb.com/companies/eruption-entertainment"
#     },
#     [40] {
#           "id" => 5298,
#         "name" => "3D People",
#          "url" => "https://www.igdb.com/companies/3d-people"
#     },
#     [41] {
#           "id" => 5299,
#         "name" => "BSK Games",
#          "url" => "https://www.igdb.com/companies/bsk-games"
#     },
#     [42] {
#           "id" => 5300,
#         "name" => "Zomboko Entertainment",
#          "url" => "https://www.igdb.com/companies/zomboko-entertainment"
#     },
#     [43] {
#           "id" => 5301,
#         "name" => "Seibu Kaihatsu Inc.",
#          "url" => "https://www.igdb.com/companies/seibu-kaihatsu-inc"
#     },
#     [44] {
#           "id" => 7376,
#         "name" => "Remax",
#          "url" => "https://www.igdb.com/companies/remax"
#     },
#     [45] {
#           "id" => 5304,
#         "name" => "Moonshot Games",
#          "url" => "https://www.igdb.com/companies/moonshot-games"
#     },
#     [46] {
#           "id" => 7378,
#         "name" => "Spacewalker",
#          "url" => "https://www.igdb.com/companies/spacewalker"
#     },
#     [47] {
#           "id" => 5306,
#         "name" => "Digital Tentacle",
#          "url" => "https://www.igdb.com/companies/digital-tentacle"
#     },
#     [48] {
#           "id" => 7380,
#         "name" => "Harmonics International",
#          "url" => "https://www.igdb.com/companies/harmonics-international"
#     },
#     [49] {
#           "id" => 7381,
#         "name" => "PearUp Media",
#          "url" => "https://www.igdb.com/companies/pearup-media"
#     },
#     [ 0] {
#           "id" => 5308,
#         "name" => "Screwy Lightbulb",
#          "url" => "https://www.igdb.com/companies/screwy-lightbulb"
#     },
#     [ 1] {
#           "id" => 7383,
#         "name" => "Team Flow",
#          "url" => "https://www.igdb.com/companies/team-flow"
#     },
#     [ 2] {
#           "id" => 7384,
#         "name" => "Tiger Style",
#          "url" => "https://www.igdb.com/companies/tiger-style"
#     },
#     [ 3] {
#           "id" => 5310,
#         "name" => "Subaltern Games",
#          "url" => "https://www.igdb.com/companies/subaltern-games--1"
#     },
#     [ 4] {
#           "id" => 7387,
#         "name" => "Space Orange Studios",
#          "url" => "https://www.igdb.com/companies/space-orange-studios"
#     },
#     [ 5] {
#           "id" => 5312,
#         "name" => "Sparpweed Games",
#          "url" => "https://www.igdb.com/companies/sparpweed-games"
#     },
#     [ 6] {
#           "id" => 7389,
#         "name" => "ARCgames",
#          "url" => "https://www.igdb.com/companies/arcgames"
#     },
#     [ 7] {
#           "id" => 5314,
#         "name" => "Invictus Games Ltd",
#          "url" => "https://www.igdb.com/companies/invictus-games-ltd"
#     },
#     [ 8] {
#           "id" => 5315,
#         "name" => "Vision Software",
#          "url" => "https://www.igdb.com/companies/vision-software"
#     },
#     [ 9] {
#           "id" => 5317,
#         "name" => "Abbey Games",
#          "url" => "https://www.igdb.com/companies/abbey-games"
#     },
#     [10] {
#           "id" => 5318,
#         "name" => "Wanako Studios Ltd.",
#          "url" => "https://www.igdb.com/companies/wanako-studios-ltd"
#     },
#     [11] {
#           "id" => 5319,
#         "name" => "Sierra Online",
#          "url" => "https://www.igdb.com/companies/sierra-online"
#     },
#     [12] {
#           "id" => 5320,
#         "name" => "Omniconnection",
#          "url" => "https://www.igdb.com/companies/omniconnection"
#     },
#     [13] {
#           "id" => 5321,
#         "name" => "Megadev",
#          "url" => "https://www.igdb.com/companies/megadev"
#     },
#     [14] {
#           "id" => 5322,
#         "name" => "Galapagos RPG",
#          "url" => "https://www.igdb.com/companies/galapagos-rpg"
#     },
#     [15] {
#           "id" => 5323,
#         "name" => "artoncode",
#          "url" => "https://www.igdb.com/companies/artoncode"
#     },
#     [16] {
#           "id" => 5324,
#         "name" => "Experience Inc.",
#          "url" => "https://www.igdb.com/companies/experience-inc"
#     },
#     [17] {
#           "id" => 5326,
#         "name" => "Camouflaj",
#          "url" => "https://www.igdb.com/companies/camouflaj"
#     },
#     [18] {
#           "id" => 5327,
#         "name" => "Dark Enery Digital - duplicate",
#          "url" => "https://www.igdb.com/companies/dark-enery-digital-duplicate"
#     },
#     [19] {
#           "id" => 5328,
#         "name" => "Depth Analysis Motionscan",
#          "url" => "https://www.igdb.com/companies/depth-analysis-motionscan"
#     },
#     [20] {
#           "id" => 5329,
#         "name" => "Oil Factory Inc.",
#          "url" => "https://www.igdb.com/companies/oil-factory-inc"
#     },
#     [21] {
#           "id" => 5330,
#         "name" => "MoAnima Holdings Limited",
#          "url" => "https://www.igdb.com/companies/moanima-holdings-limited"
#     },
#     [22] {
#           "id" => 5331,
#         "name" => "GOATi Outsourcing",
#          "url" => "https://www.igdb.com/companies/goati-outsourcing"
#     },
#     [23] {
#           "id" => 5332,
#         "name" => "TUI Studios",
#          "url" => "https://www.igdb.com/companies/tui-studios"
#     },
#     [24] {
#           "id" => 5333,
#         "name" => "Schiff Audino Casting",
#          "url" => "https://www.igdb.com/companies/schiff-audino-casting"
#     },
#     [25] {
#           "id" => 5334,
#         "name" => "Rage Technology Group",
#          "url" => "https://www.igdb.com/companies/rage-technology-group"
#     },
#     [26] {
#           "id" => 5335,
#         "name" => "Metropolis Studios London",
#          "url" => "https://www.igdb.com/companies/metropolis-studios-london"
#     },
#     [27] {
#           "id" => 5336,
#         "name" => "Owlspace Studio London",
#          "url" => "https://www.igdb.com/companies/owlspace-studio-london"
#     },
#     [28] {
#           "id" => 5337,
#         "name" => "Tetsuro Naito Group",
#          "url" => "https://www.igdb.com/companies/tetsuro-naito-group"
#     },
#     [29] {
#           "id" => 5338,
#         "name" => "Six Degrees Music",
#          "url" => "https://www.igdb.com/companies/six-degrees-music"
#     },
#     [30] {
#           "id" => 5339,
#         "name" => "Convoy Games",
#          "url" => "https://www.igdb.com/companies/convoy-games"
#     },
#     [31] {
#           "id" => 7394,
#         "name" => "Raspina Games",
#          "url" => "https://www.igdb.com/companies/raspina-games"
#     },
#     [32] {
#           "id" => 5341,
#         "name" => "Eikichi Kawaaki",
#          "url" => "https://www.igdb.com/companies/eikichi-kawaaki"
#     },
#     [33] {
#           "id" => 5342,
#         "name" => "electrolyte",
#          "url" => "https://www.igdb.com/companies/electrolyte"
#     },
#     [34] {
#           "id" => 5343,
#         "name" => "UFO Interactive Games",
#          "url" => "https://www.igdb.com/companies/ufo-interactive-games"
#     },
#     [35] {
#           "id" => 5344,
#         "name" => "Soft-World International Corporation",
#          "url" => "https://www.igdb.com/companies/soft-world-international-corporation"
#     },
#     [36] {
#           "id" => 7398,
#         "name" => "Videocult",
#          "url" => "https://www.igdb.com/companies/videocult"
#     },
#     [37] {
#           "id" => 7399,
#         "name" => "Stately Snail",
#          "url" => "https://www.igdb.com/companies/stately-snail"
#     },
#     [38] {
#           "id" => 7401,
#         "name" => "G.L.L Software S.A",
#          "url" => "https://www.igdb.com/companies/gll-software-sa"
#     },
#     [39] {
#           "id" => 5360,
#         "name" => "Lazy 8 Studios",
#          "url" => "https://www.igdb.com/companies/lazy-8-studios"
#     },
#     [40] {
#           "id" => 7403,
#         "name" => "Turcan Research",
#          "url" => "https://www.igdb.com/companies/turcan-research"
#     },
#     [41] {
#           "id" => 5384,
#         "name" => "DPN Santos",
#          "url" => "https://www.igdb.com/companies/dpn-santos"
#     },
#     [42] {
#           "id" => 5385,
#         "name" => "Future Press",
#          "url" => "https://www.igdb.com/companies/future-press"
#     },
#     [43] {
#           "id" => 5386,
#         "name" => "Tamtam",
#          "url" => "https://www.igdb.com/companies/tamtam"
#     },
#     [44] {
#           "id" => 7406,
#         "name" => "Jaybot7",
#          "url" => "https://www.igdb.com/companies/jaybot7"
#     },
#     [45] {
#           "id" => 7407,
#         "name" => "Plastic Studios",
#          "url" => "https://www.igdb.com/companies/plastic-studios"
#     },
#     [46] {
#           "id" => 5389,
#         "name" => "Anaheim Entertainment",
#          "url" => "https://www.igdb.com/companies/anaheim-entertainment"
#     },
#     [47] {
#           "id" => 5391,
#         "name" => "CO-RUN",
#          "url" => "https://www.igdb.com/companies/co-run"
#     },
#     [48] {
#           "id" => 5393,
#         "name" => "X-Over-Records",
#          "url" => "https://www.igdb.com/companies/x-over-records"
#     },
#     [49] {
#           "id" => 5394,
#         "name" => "Water Orion",
#          "url" => "https://www.igdb.com/companies/water-orion"
#     },
#     [ 0] {
#           "id" => 5395,
#         "name" => "T-Project",
#          "url" => "https://www.igdb.com/companies/t-project"
#     },
#     [ 1] {
#           "id" => 5398,
#         "name" => "The Green Kingdom",
#          "url" => "https://www.igdb.com/companies/the-green-kingdom"
#     },
#     [ 2] {
#           "id" => 5399,
#         "name" => "Prey Growl",
#          "url" => "https://www.igdb.com/companies/prey-growl"
#     },
#     [ 3] {
#           "id" => 7418,
#         "name" => "Retro64, Inc.",
#          "url" => "https://www.igdb.com/companies/retro64-inc"
#     },
#     [ 4] {
#           "id" => 5403,
#         "name" => "Magic Sword",
#          "url" => "https://www.igdb.com/companies/magic-sword"
#     },
#     [ 5] {
#           "id" => 7419,
#         "name" => "Imagos Softworks",
#          "url" => "https://www.igdb.com/companies/imagos-softworks"
#     },
#     [ 6] {
#           "id" => 7420,
#         "name" => "KnightSoft Software",
#          "url" => "https://www.igdb.com/companies/knightsoft-software"
#     },
#     [ 7] {
#           "id" => 5410,
#         "name" => "Dudmood",
#          "url" => "https://www.igdb.com/companies/dudmood"
#     },
#     [ 8] {
#           "id" => 5412,
#         "name" => "El Tigr3",
#          "url" => "https://www.igdb.com/companies/el-tigr3"
#     },
#     [ 9] {
#           "id" => 7425,
#         "name" => "Mithis Games",
#          "url" => "https://www.igdb.com/companies/mithis-games"
#     },
#     [10] {
#           "id" => 7427,
#         "name" => "R C Knight",
#          "url" => "https://www.igdb.com/companies/r-c-knight"
#     },
#     [11] {
#           "id" => 5415,
#         "name" => "Modulogeek",
#          "url" => "https://www.igdb.com/companies/modulogeek"
#     },
#     [12] {
#           "id" => 7429,
#         "name" => "PopTop - duplicate",
#          "url" => "https://www.igdb.com/companies/poptop-duplicate"
#     },
#     [13] {
#           "id" => 5418,
#         "name" => "El Huervo",
#          "url" => "https://www.igdb.com/companies/el-huervo"
#     },
#     [14] {
#           "id" => 5419,
#         "name" => "Chromacle",
#          "url" => "https://www.igdb.com/companies/chromacle"
#     },
#     [15] {
#           "id" => 5420,
#         "name" => "Riddarna",
#          "url" => "https://www.igdb.com/companies/riddarna"
#     },
#     [16] {
#           "id" => 7433,
#         "name" => "Behaviour Santiago",
#          "url" => "https://www.igdb.com/companies/behaviour-santiago"
#     },
#     [17] {
#           "id" => 7434,
#         "name" => "Electronic Paradise",
#          "url" => "https://www.igdb.com/companies/electronic-paradise"
#     },
#     [18] {
#           "id" => 7436,
#         "name" => "KDV Games",
#          "url" => "https://www.igdb.com/companies/kdv-games"
#     },
#     [19] {
#           "id" => 7437,
#         "name" => "Technetium Games",
#          "url" => "https://www.igdb.com/companies/technetium-games"
#     },
#     [20] {
#           "id" => 7439,
#         "name" => "D3Publisher of America, Inc.",
#          "url" => "https://www.igdb.com/companies/d3publisher-of-america-inc"
#     },
#     [21] {
#           "id" => 7440,
#         "name" => "Gamebryo",
#          "url" => "https://www.igdb.com/companies/gamebryo"
#     },
#     [22] {
#           "id" => 7441,
#         "name" => "Virtual Playground",
#          "url" => "https://www.igdb.com/companies/virtual-playground"
#     },
#     [23] {
#           "id" => 7442,
#         "name" => "Codemasters Studios",
#          "url" => "https://www.igdb.com/companies/codemasters-studios"
#     },
#     [24] {
#           "id" => 7444,
#         "name" => "Crow Crows Crows",
#          "url" => "https://www.igdb.com/companies/crow-crows-crows"
#     },
#     [25] {
#           "id" => 7445,
#         "name" => "Koei Tecmo Europe",
#          "url" => "https://www.igdb.com/companies/koei-tecmo-europe"
#     },
#     [26] {
#           "id" => 7446,
#         "name" => "EasyTech",
#          "url" => "https://www.igdb.com/companies/easytech"
#     },
#     [27] {
#           "id" => 7447,
#         "name" => "TJ Townsend",
#          "url" => "https://www.igdb.com/companies/tj-townsend"
#     },
#     [28] {
#           "id" => 7449,
#         "name" => "Slam",
#          "url" => "https://www.igdb.com/companies/slam"
#     },
#     [29] {
#           "id" => 7451,
#         "name" => "Redlynx Ltd",
#          "url" => "https://www.igdb.com/companies/redlynx-ltd"
#     },
#     [30] {
#           "id" => 7452,
#         "name" => "Miniclip.com",
#          "url" => "https://www.igdb.com/companies/miniclip-dot-com"
#     },
#     [31] {
#           "id" => 7455,
#         "name" => "Octoshark Studios",
#          "url" => "https://www.igdb.com/companies/octoshark-studios"
#     },
#     [32] {
#           "id" => 7456,
#         "name" => "Inventive Dingo",
#          "url" => "https://www.igdb.com/companies/inventive-dingo"
#     },
#     [33] {
#           "id" => 7457,
#         "name" => "Brian Cronin",
#          "url" => "https://www.igdb.com/companies/brian-cronin"
#     },
#     [34] {
#           "id" => 7458,
#         "name" => "Strawdog Studios Ltd",
#          "url" => "https://www.igdb.com/companies/strawdog-studios-ltd"
#     },
#     [35] {
#           "id" => 7459,
#         "name" => "Bounce Entertainment",
#          "url" => "https://www.igdb.com/companies/bounce-entertainment"
#     },
#     [36] {
#           "id" => 7460,
#         "name" => "Bounce Entertainment",
#          "url" => "https://www.igdb.com/companies/bounce-entertainment--1"
#     },
#     [37] {
#           "id" => 7461,
#         "name" => "Perpetual FX Creative",
#          "url" => "https://www.igdb.com/companies/perpetual-fx-creative"
#     },
#     [38] {
#           "id" => 7462,
#         "name" => "Volition",
#          "url" => "https://www.igdb.com/companies/volition"
#     },
#     [39] {
#           "id" => 7463,
#         "name" => "Eipix",
#          "url" => "https://www.igdb.com/companies/eipix"
#     },
#     [40] {
#           "id" => 7464,
#         "name" => "Candella Systems Ltd",
#          "url" => "https://www.igdb.com/companies/candella-systems-ltd"
#     },
#     [41] {
#           "id" => 7466,
#         "name" => "Paradox Development Studio",
#          "url" => "https://www.igdb.com/companies/paradox-development-studio"
#     },
#     [42] {
#           "id" => 7468,
#         "name" => "Mindstorm Studios",
#          "url" => "https://www.igdb.com/companies/mindstorm-studios"
#     },
#     [43] {
#           "id" => 7470,
#         "name" => "Cyberlore",
#          "url" => "https://www.igdb.com/companies/cyberlore"
#     },
#     [44] {
#           "id" => 7471,
#         "name" => "Paleo Entertainment",
#          "url" => "https://www.igdb.com/companies/paleo-entertainment"
#     },
#     [45] {
#           "id" => 5424,
#         "name" => "Dayjob Studios",
#          "url" => "https://www.igdb.com/companies/dayjob-studios"
#     },
#     [46] {
#           "id" => 5425,
#         "name" => "The Poppenkast",
#          "url" => "https://www.igdb.com/companies/the-poppenkast"
#     },
#     [47] {
#           "id" => 5426,
#         "name" => "Studio Pierre Marchand",
#          "url" => "https://www.igdb.com/companies/studio-pierre-marchand"
#     },
#     [48] {
#           "id" => 5427,
#         "name" => "Cæur de al lumière",
#          "url" => "https://www.igdb.com/companies/caeur-de-al-lumiere"
#     },
#     [49] {
#           "id" => 5428,
#         "name" => "Studios Planet",
#          "url" => "https://www.igdb.com/companies/studios-planet"
#     },
#     [ 0] {
#           "id" => 5429,
#         "name" => "Le Lab Mastering",
#          "url" => "https://www.igdb.com/companies/le-lab-mastering"
#     },
#     [ 1] {
#           "id" => 5430,
#         "name" => "Cirque Du Solei Media",
#          "url" => "https://www.igdb.com/companies/cirque-du-solei-media"
#     },
#     [ 2] {
#           "id" => 5431,
#         "name" => "Alice Studio",
#          "url" => "https://www.igdb.com/companies/alice-studio"
#     },
#     [ 3] {
#           "id" => 5432,
#         "name" => "Synthesis Brazil",
#          "url" => "https://www.igdb.com/companies/synthesis-brazil"
#     },
#     [ 4] {
#           "id" => 5433,
#         "name" => "Studio SoundValley",
#          "url" => "https://www.igdb.com/companies/studio-soundvalley"
#     },
#     [ 5] {
#           "id" => 5434,
#         "name" => "KBA Creative",
#          "url" => "https://www.igdb.com/companies/kba-creative"
#     },
#     [ 6] {
#           "id" => 5435,
#         "name" => "Pacific Ocean Post",
#          "url" => "https://www.igdb.com/companies/pacific-ocean-post"
#     },
#     [ 7] {
#           "id" => 5436,
#         "name" => "Margarita Mix Santa Monica",
#          "url" => "https://www.igdb.com/companies/margarita-mix-santa-monica"
#     },
#     [ 8] {
#           "id" => 5437,
#         "name" => "Melbourne Symphony Orchestra",
#          "url" => "https://www.igdb.com/companies/melbourne-symphony-orchestra"
#     },
#     [ 9] {
#           "id" => 5438,
#         "name" => "Pyramid Studios",
#          "url" => "https://www.igdb.com/companies/pyramid-studios"
#     },
#     [10] {
#           "id" => 5439,
#         "name" => "Mission Studio",
#          "url" => "https://www.igdb.com/companies/mission-studio"
#     },
#     [11] {
#           "id" => 5440,
#         "name" => "Fangamer",
#          "url" => "https://www.igdb.com/companies/fangamer"
#     },
#     [12] {
#           "id" => 5441,
#         "name" => "Forward Printing",
#          "url" => "https://www.igdb.com/companies/forward-printing"
#     },
#     [13] {
#           "id" => 5442,
#         "name" => "iam8bit",
#          "url" => "https://www.igdb.com/companies/iam8bit"
#     },
#     [14] {
#           "id" => 5443,
#         "name" => "Forty Seven Communications",
#          "url" => "https://www.igdb.com/companies/forty-seven-communications"
#     },
#     [15] {
#           "id" => 5444,
#         "name" => "Airborn Studios",
#          "url" => "https://www.igdb.com/companies/airborn-studios"
#     },
#     [16] {
#           "id" => 5445,
#         "name" => "Wabi Sabi Sound Inc",
#          "url" => "https://www.igdb.com/companies/wabi-sabi-sound-inc"
#     },
#     [17] {
#           "id" => 5446,
#         "name" => "Lionbridge Game Services",
#          "url" => "https://www.igdb.com/companies/lionbridge-game-services"
#     },
#     [18] {
#           "id" => 7472,
#         "name" => "Kloonigames",
#          "url" => "https://www.igdb.com/companies/kloonigames"
#     },
#     [19] {
#           "id" => 7474,
#         "name" => "DnS Development",
#          "url" => "https://www.igdb.com/companies/dns-development"
#     },
#     [20] {
#           "id" => 7475,
#         "name" => "Hemisphere Games",
#          "url" => "https://www.igdb.com/companies/hemisphere-games"
#     },
#     [21] {
#           "id" => 7476,
#         "name" => "Thinking Studios",
#          "url" => "https://www.igdb.com/companies/thinking-studios"
#     },
#     [22] {
#           "id" => 7477,
#         "name" => "Slam Dunk Studios",
#          "url" => "https://www.igdb.com/companies/slam-dunk-studios"
#     },
#     [23] {
#           "id" => 7478,
#         "name" => "Black Jacket Studios",
#          "url" => "https://www.igdb.com/companies/black-jacket-studios"
#     },
#     [24] {
#           "id" => 7481,
#         "name" => "Ascaron Entertainment ltd.",
#          "url" => "https://www.igdb.com/companies/ascaron-entertainment-ltd"
#     },
#     [25] {
#           "id" => 7482,
#         "name" => "Revolution Software Ltd",
#          "url" => "https://www.igdb.com/companies/revolution-software-ltd"
#     },
#     [26] {
#           "id" => 7483,
#         "name" => "Gunnar Games, Inc.",
#          "url" => "https://www.igdb.com/companies/gunnar-games-inc"
#     },
#     [27] {
#           "id" => 7484,
#         "name" => "Invent4 Entertainment",
#          "url" => "https://www.igdb.com/companies/invent4-entertainment"
#     },
#     [28] {
#           "id" => 7486,
#         "name" => "Game Factory Interactive",
#          "url" => "https://www.igdb.com/companies/game-factory-interactive"
#     },
#     [29] {
#           "id" => 7487,
#         "name" => "Actual Screenshots",
#          "url" => "https://www.igdb.com/companies/actual-screenshots"
#     },
#     [30] {
#           "id" => 7488,
#         "name" => "Power of 2",
#          "url" => "https://www.igdb.com/companies/power-of-2"
#     },
#     [31] {
#           "id" => 7489,
#         "name" => "Frima",
#          "url" => "https://www.igdb.com/companies/frima"
#     },
#     [32] {
#           "id" => 7490,
#         "name" => "Chaos Concept",
#          "url" => "https://www.igdb.com/companies/chaos-concept"
#     },
#     [33] {
#           "id" => 7491,
#         "name" => "Big Splash Games, LLC",
#          "url" => "https://www.igdb.com/companies/big-splash-games-llc"
#     },
#     [34] {
#           "id" => 7493,
#         "name" => "Vectorpark, Inc.",
#          "url" => "https://www.igdb.com/companies/vectorpark-inc"
#     },
#     [35] {
#           "id" => 7494,
#         "name" => "Awem Studio",
#          "url" => "https://www.igdb.com/companies/awem-studio"
#     },
#     [36] {
#           "id" => 5448,
#         "name" => "Nyamyam",
#          "url" => "https://www.igdb.com/companies/nyamyam"
#     },
#     [37] {
#           "id" => 5449,
#         "name" => "Disruptive Games",
#          "url" => "https://www.igdb.com/companies/disruptive-games"
#     },
#     [38] {
#           "id" => 7497,
#         "name" => "Vogster Entertainment",
#          "url" => "https://www.igdb.com/companies/vogster-entertainment"
#     },
#     [39] {
#           "id" => 7500,
#         "name" => "4 Head Studios",
#          "url" => "https://www.igdb.com/companies/4-head-studios"
#     },
#     [40] {
#           "id" => 5451,
#         "name" => "Crystal Labs",
#          "url" => "https://www.igdb.com/companies/crystal-labs"
#     },
#     [41] {
#           "id" => 5453,
#         "name" => "Nether Productions, LLC",
#          "url" => "https://www.igdb.com/companies/nether-productions-llc"
#     },
#     [42] {
#           "id" => 7504,
#         "name" => "Trinoteam",
#          "url" => "https://www.igdb.com/companies/trinoteam"
#     },
#     [43] {
#           "id" => 7506,
#         "name" => "Dark Water Studios Ltd",
#          "url" => "https://www.igdb.com/companies/dark-water-studios-ltd"
#     },
#     [44] {
#           "id" => 7508,
#         "name" => "KTX Software",
#          "url" => "https://www.igdb.com/companies/ktx-software"
#     },
#     [45] {
#           "id" => 5459,
#         "name" => "Cowardly Creations",
#          "url" => "https://www.igdb.com/companies/cowardly-creations"
#     },
#     [46] {
#           "id" => 7510,
#         "name" => "Cadenza Interactive",
#          "url" => "https://www.igdb.com/companies/cadenza-interactive"
#     },
#     [47] {
#           "id" => 5461,
#         "name" => "Game Refuge Inc",
#          "url" => "https://www.igdb.com/companies/game-refuge-inc"
#     },
#     [48] {
#           "id" => 5463,
#         "name" => "Bug Byte",
#          "url" => "https://www.igdb.com/companies/bug-byte"
#     },
#     [49] {
#           "id" => 5464,
#         "name" => "California Dreams",
#          "url" => "https://www.igdb.com/companies/california-dreams"
#     },
#     [ 0] {
#           "id" => 7515,
#         "name" => "Dust Devil Studios Inc.",
#          "url" => "https://www.igdb.com/companies/dust-devil-studios-inc"
#     },
#     [ 1] {
#           "id" => 7516,
#         "name" => "Virtual Prophecy Entertainment",
#          "url" => "https://www.igdb.com/companies/virtual-prophecy-entertainment"
#     },
#     [ 2] {
#           "id" => 5470,
#         "name" => "Feng Zhu Design",
#          "url" => "https://www.igdb.com/companies/feng-zhu-design"
#     },
#     [ 3] {
#           "id" => 5472,
#         "name" => "Oakley Inc.",
#          "url" => "https://www.igdb.com/companies/oakley-inc"
#     },
#     [ 4] {
#           "id" => 7519,
#         "name" => "Nicklas Nygren",
#          "url" => "https://www.igdb.com/companies/nicklas-nygren"
#     },
#     [ 5] {
#           "id" => 7520,
#         "name" => "Kreatoriet AB",
#          "url" => "https://www.igdb.com/companies/kreatoriet-ab"
#     },
#     [ 6] {
#           "id" => 5476,
#         "name" => "NXA Studios",
#          "url" => "https://www.igdb.com/companies/nxa-studios"
#     },
#     [ 7] {
#           "id" => 7521,
#         "name" => "TheWgames",
#          "url" => "https://www.igdb.com/companies/thewgames"
#     },
#     [ 8] {
#           "id" => 5479,
#         "name" => "Relative Reality",
#          "url" => "https://www.igdb.com/companies/relative-reality"
#     },
#     [ 9] {
#           "id" => 5480,
#         "name" => "Southern Metal Choppers",
#          "url" => "https://www.igdb.com/companies/southern-metal-choppers"
#     },
#     [10] {
#           "id" => 5482,
#         "name" => "Thomason Performance",
#          "url" => "https://www.igdb.com/companies/thomason-performance"
#     },
#     [11] {
#           "id" => 7524,
#         "name" => "4sdk",
#          "url" => "https://www.igdb.com/companies/4sdk"
#     },
#     [12] {
#           "id" => 5484,
#         "name" => "Moontower VFX",
#          "url" => "https://www.igdb.com/companies/moontower-vfx"
#     },
#     [13] {
#           "id" => 5485,
#         "name" => "Stuck On On",
#          "url" => "https://www.igdb.com/companies/stuck-on-on"
#     },
#     [14] {
#           "id" => 5487,
#         "name" => "Spiderwood Studios",
#          "url" => "https://www.igdb.com/companies/spiderwood-studios"
#     },
#     [15] {
#           "id" => 5488,
#         "name" => "Texas Kitchen Divas",
#          "url" => "https://www.igdb.com/companies/texas-kitchen-divas"
#     },
#     [16] {
#           "id" => 7527,
#         "name" => "Hitbox Team",
#          "url" => "https://www.igdb.com/companies/hitbox-team"
#     },
#     [17] {
#           "id" => 5491,
#         "name" => "Ghostly International",
#          "url" => "https://www.igdb.com/companies/ghostly-international"
#     },
#     [18] {
#           "id" => 7529,
#         "name" => "Team17 Software Ltd.",
#          "url" => "https://www.igdb.com/companies/team17-software-ltd"
#     },
#     [19] {
#           "id" => 7531,
#         "name" => "1C:InoCo",
#          "url" => "https://www.igdb.com/companies/1c-inoco"
#     },
#     [20] {
#           "id" => 5499,
#         "name" => "Winking",
#          "url" => "https://www.igdb.com/companies/winking"
#     },
#     [21] {
#           "id" => 5500,
#         "name" => "Game First International",
#          "url" => "https://www.igdb.com/companies/game-first-international"
#     },
#     [22] {
#           "id" => 7533,
#         "name" => "Bacon Wrapped Games",
#          "url" => "https://www.igdb.com/companies/bacon-wrapped-games"
#     },
#     [23] {
#           "id" => 7534,
#         "name" => "WXP Games, LLC",
#          "url" => "https://www.igdb.com/companies/wxp-games-llc"
#     },
#     [24] {
#           "id" => 5503,
#         "name" => "AK'LA KARA Production",
#          "url" => "https://www.igdb.com/companies/akla-kara-production"
#     },
#     [25] {
#           "id" => 5504,
#         "name" => "Atomic Sound Studio",
#          "url" => "https://www.igdb.com/companies/atomic-sound-studio"
#     },
#     [26] {
#           "id" => 7536,
#         "name" => "OtherSide Games",
#          "url" => "https://www.igdb.com/companies/otherside-games"
#     },
#     [27] {
#           "id" => 5506,
#         "name" => "DNA Diseño en Audio",
#          "url" => "https://www.igdb.com/companies/dna-diseno-en-audio"
#     },
#     [28] {
#           "id" => 7538,
#         "name" => "Colibri Games",
#          "url" => "https://www.igdb.com/companies/colibri-games"
#     },
#     [29] {
#           "id" => 5509,
#         "name" => "Mighty Vertex",
#          "url" => "https://www.igdb.com/companies/mighty-vertex"
#     },
#     [30] {
#           "id" => 7540,
#         "name" => "Fire Hose Games",
#          "url" => "https://www.igdb.com/companies/fire-hose-games"
#     },
#     [31] {
#           "id" => 7541,
#         "name" => "Krystian Majewski",
#          "url" => "https://www.igdb.com/companies/krystian-majewski"
#     },
#     [32] {
#           "id" => 7542,
#         "name" => "Zeroscale",
#          "url" => "https://www.igdb.com/companies/zeroscale"
#     },
#     [33] {
#           "id" => 5512,
#         "name" => "Kickstarter.com",
#          "url" => "https://www.igdb.com/companies/kickstarter-dot-com"
#     },
#     [34] {
#           "id" => 5513,
#         "name" => "Icons by Lorc",
#          "url" => "https://www.igdb.com/companies/icons-by-lorc"
#     },
#     [35] {
#           "id" => 5514,
#         "name" => "Annosoft LLC",
#          "url" => "https://www.igdb.com/companies/annosoft-llc"
#     },
#     [36] {
#           "id" => 5515,
#         "name" => "RAD Software",
#          "url" => "https://www.igdb.com/companies/rad-software"
#     },
#     [37] {
#           "id" => 5516,
#         "name" => "Side Effects Software",
#          "url" => "https://www.igdb.com/companies/side-effects-software"
#     },
#     [38] {
#           "id" => 5517,
#         "name" => "Welcome to 1979 Studios",
#          "url" => "https://www.igdb.com/companies/welcome-to-1979-studios"
#     },
#     [39] {
#           "id" => 5518,
#         "name" => "Innovative Leisure",
#          "url" => "https://www.igdb.com/companies/innovative-leisure"
#     },
#     [40] {
#           "id" => 5519,
#         "name" => "At The End Studios",
#          "url" => "https://www.igdb.com/companies/at-the-end-studios"
#     },
#     [41] {
#           "id" => 5520,
#         "name" => "Basement Records",
#          "url" => "https://www.igdb.com/companies/basement-records"
#     },
#     [42] {
#           "id" => 5521,
#         "name" => "Cutting Edge Music Services",
#          "url" => "https://www.igdb.com/companies/cutting-edge-music-services"
#     },
#     [43] {
#           "id" => 5522,
#         "name" => "Zip Global",
#          "url" => "https://www.igdb.com/companies/zip-global"
#     },
#     [44] {
#           "id" => 5523,
#         "name" => "Goblin",
#          "url" => "https://www.igdb.com/companies/goblin"
#     },
#     [45] {
#           "id" => 5524,
#         "name" => "Sound Racer",
#          "url" => "https://www.igdb.com/companies/sound-racer"
#     },
#     [46] {
#           "id" => 5525,
#         "name" => "Paon Corporation",
#          "url" => "https://www.igdb.com/companies/paon-corporation"
#     },
#     [47] {
#           "id" => 5526,
#         "name" => "Rideon",
#          "url" => "https://www.igdb.com/companies/rideon"
#     },
#     [48] {
#           "id" => 5527,
#         "name" => "Rainbow Train",
#          "url" => "https://www.igdb.com/companies/rainbow-train"
#     },
#     [49] {
#           "id" => 7564,
#         "name" => "RC Knight",
#          "url" => "https://www.igdb.com/companies/rc-knight"
#     },
#     [ 0] {
#           "id" => 5529,
#         "name" => "Terrible Toybox",
#          "url" => "https://www.igdb.com/companies/terrible-toybox"
#     },
#     [ 1] {
#           "id" => 5532,
#         "name" => "Xaviant Games",
#          "url" => "https://www.igdb.com/companies/xaviant-games--1"
#     },
#     [ 2] {
#           "id" => 7568,
#         "name" => "Locked Door Puzzle",
#          "url" => "https://www.igdb.com/companies/locked-door-puzzle"
#     },
#     [ 3] {
#           "id" => 7569,
#         "name" => "Down to the Wire",
#          "url" => "https://www.igdb.com/companies/down-to-the-wire"
#     },
#     [ 4] {
#           "id" => 5535,
#         "name" => "GarLu Productions",
#          "url" => "https://www.igdb.com/companies/garlu-productions"
#     },
#     [ 5] {
#           "id" => 5536,
#         "name" => "Blitz Agency",
#          "url" => "https://www.igdb.com/companies/blitz-agency"
#     },
#     [ 6] {
#           "id" => 7571,
#         "name" => "Virtual Basement LLC",
#          "url" => "https://www.igdb.com/companies/virtual-basement-llc"
#     },
#     [ 7] {
#           "id" => 7572,
#         "name" => "Code Headquarters LLC",
#          "url" => "https://www.igdb.com/companies/code-headquarters-llc"
#     },
#     [ 8] {
#           "id" => 5539,
#         "name" => "Scratch Image",
#          "url" => "https://www.igdb.com/companies/scratch-image"
#     },
#     [ 9] {
#           "id" => 7574,
#         "name" => "Media Rings",
#          "url" => "https://www.igdb.com/companies/media-rings"
#     },
#     [10] {
#           "id" => 5542,
#         "name" => "Matt Makes Games",
#          "url" => "https://www.igdb.com/companies/matt-makes-games"
#     },
#     [11] {
#           "id" => 7576,
#         "name" => "Juggernaut Games",
#          "url" => "https://www.igdb.com/companies/juggernaut-games"
#     },
#     [12] {
#           "id" => 5544,
#         "name" => "Square Product Development Division 4",
#          "url" => "https://www.igdb.com/companies/square-product-development-division-4"
#     },
#     [13] {
#           "id" => 5546,
#         "name" => "Engyne Creations",
#          "url" => "https://www.igdb.com/companies/engyne-creations"
#     },
#     [14] {
#           "id" => 7579,
#         "name" => "Wombat",
#          "url" => "https://www.igdb.com/companies/wombat"
#     },
#     [15] {
#           "id" => 5549,
#         "name" => "SNTGames",
#          "url" => "https://www.igdb.com/companies/sntgames"
#     },
#     [16] {
#           "id" => 7581,
#         "name" => "Flying Dutchman Studios",
#          "url" => "https://www.igdb.com/companies/flying-dutchman-studios"
#     },
#     [17] {
#           "id" => 5551,
#         "name" => "Cabin House Studio",
#          "url" => "https://www.igdb.com/companies/cabin-house-studio"
#     },
#     [18] {
#           "id" => 5552,
#         "name" => "Resonate Studios",
#          "url" => "https://www.igdb.com/companies/resonate-studios"
#     },
#     [19] {
#           "id" => 5553,
#         "name" => "Alliance Studio",
#          "url" => "https://www.igdb.com/companies/alliance-studio"
#     },
#     [20] {
#           "id" => 5554,
#         "name" => "Pixeltamer.net",
#          "url" => "https://www.igdb.com/companies/pixeltamer-dot-net"
#     },
#     [21] {
#           "id" => 5555,
#         "name" => "Looking 4 Larry",
#          "url" => "https://www.igdb.com/companies/looking-4-larry"
#     },
#     [22] {
#           "id" => 5556,
#         "name" => "Dan Klores Communications",
#          "url" => "https://www.igdb.com/companies/dan-klores-communications"
#     },
#     [23] {
#           "id" => 5557,
#         "name" => "World Wrestling Entertainment",
#          "url" => "https://www.igdb.com/companies/world-wrestling-entertainment"
#     },
#     [24] {
#           "id" => 5558,
#         "name" => "MILAJ Corporation",
#          "url" => "https://www.igdb.com/companies/milaj-corporation"
#     },
#     [25] {
#           "id" => 5559,
#         "name" => "Spice Inc.",
#          "url" => "https://www.igdb.com/companies/spice-inc"
#     },
#     [26] {
#           "id" => 5560,
#         "name" => "Axiom Designs",
#          "url" => "https://www.igdb.com/companies/axiom-designs"
#     },
#     [27] {
#           "id" => 5561,
#         "name" => "Marigul Management",
#          "url" => "https://www.igdb.com/companies/marigul-management"
#     },
#     [28] {
#           "id" => 5562,
#         "name" => "CR.64MC",
#          "url" => "https://www.igdb.com/companies/cr-dot-64mc"
#     },
#     [29] {
#           "id" => 5563,
#         "name" => "Slovak National Symphony Orchestra",
#          "url" => "https://www.igdb.com/companies/slovak-national-symphony-orchestra"
#     },
#     [30] {
#           "id" => 5564,
#         "name" => "Lucnica Chorus",
#          "url" => "https://www.igdb.com/companies/lucnica-chorus"
#     },
#     [31] {
#           "id" => 5565,
#         "name" => "One Voice Productions",
#          "url" => "https://www.igdb.com/companies/one-voice-productions"
#     },
#     [32] {
#           "id" => 5566,
#         "name" => "Livada Productions",
#          "url" => "https://www.igdb.com/companies/livada-productions"
#     },
#     [33] {
#           "id" => 5567,
#         "name" => "Alexandra Audio",
#          "url" => "https://www.igdb.com/companies/alexandra-audio"
#     },
#     [34] {
#           "id" => 7582,
#         "name" => "London Metropolitan Orchestre",
#          "url" => "https://www.igdb.com/companies/london-metropolitan-orchestre"
#     },
#     [35] {
#           "id" => 7583,
#         "name" => "Imperal Studios",
#          "url" => "https://www.igdb.com/companies/imperal-studios"
#     },
#     [36] {
#           "id" => 5571,
#         "name" => "I.S. Productions",
#          "url" => "https://www.igdb.com/companies/is-productions"
#     },
#     [37] {
#           "id" => 5572,
#         "name" => "CM Dubbing Factory",
#          "url" => "https://www.igdb.com/companies/cm-dubbing-factory"
#     },
#     [38] {
#           "id" => 7585,
#         "name" => "CTS Studio",
#          "url" => "https://www.igdb.com/companies/cts-studio"
#     },
#     [39] {
#           "id" => 5574,
#         "name" => "Square Visual Works",
#          "url" => "https://www.igdb.com/companies/square-visual-works"
#     },
#     [40] {
#           "id" => 7586,
#         "name" => "Cameo Production",
#          "url" => "https://www.igdb.com/companies/cameo-production"
#     },
#     [41] {
#           "id" => 7587,
#         "name" => "Incognito Stunt-Crew",
#          "url" => "https://www.igdb.com/companies/incognito-stunt-crew"
#     },
#     [42] {
#           "id" => 5577,
#         "name" => "Spice",
#          "url" => "https://www.igdb.com/companies/spice"
#     },
#     [43] {
#           "id" => 7588,
#         "name" => "Mythos Studios",
#          "url" => "https://www.igdb.com/companies/mythos-studios"
#     },
#     [44] {
#           "id" => 5579,
#         "name" => "Cerny Games",
#          "url" => "https://www.igdb.com/companies/cerny-games"
#     },
#     [45] {
#           "id" => 5580,
#         "name" => "Universal Sound",
#          "url" => "https://www.igdb.com/companies/universal-sound"
#     },
#     [46] {
#           "id" => 5581,
#         "name" => "Production EN",
#          "url" => "https://www.igdb.com/companies/production-en"
#     },
#     [47] {
#           "id" => 5583,
#         "name" => "anime-R",
#          "url" => "https://www.igdb.com/companies/anime-r"
#     },
#     [48] {
#           "id" => 7592,
#         "name" => "Mega64",
#          "url" => "https://www.igdb.com/companies/mega64"
#     },
#     [49] {
#           "id" => 5586,
#         "name" => "Tatsunoko Production",
#          "url" => "https://www.igdb.com/companies/tatsunoko-production"
#     },
#     [ 0] {
#           "id" => 7594,
#         "name" => "Sherer Design Associates",
#          "url" => "https://www.igdb.com/companies/sherer-design-associates"
#     },
#     [ 1] {
#           "id" => 7595,
#         "name" => "Pyraponic Industries",
#          "url" => "https://www.igdb.com/companies/pyraponic-industries"
#     },
#     [ 2] {
#           "id" => 5590,
#         "name" => "Studio Takuranke",
#          "url" => "https://www.igdb.com/companies/studio-takuranke"
#     },
#     [ 3] {
#           "id" => 7596,
#         "name" => "The Castle",
#          "url" => "https://www.igdb.com/companies/the-castle"
#     },
#     [ 4] {
#           "id" => 5592,
#         "name" => "Studio L",
#          "url" => "https://www.igdb.com/companies/studio-l"
#     },
#     [ 5] {
#           "id" => 5593,
#         "name" => "Xenron",
#          "url" => "https://www.igdb.com/companies/xenron"
#     },
#     [ 6] {
#           "id" => 5594,
#         "name" => "Taikan Animation Studio",
#          "url" => "https://www.igdb.com/companies/taikan-animation-studio"
#     },
#     [ 7] {
#           "id" => 5595,
#         "name" => "FAI Intemational",
#          "url" => "https://www.igdb.com/companies/fai-intemational"
#     },
#     [ 8] {
#           "id" => 7598,
#         "name" => "Athenaeum Productions",
#          "url" => "https://www.igdb.com/companies/athenaeum-productions"
#     },
#     [ 9] {
#           "id" => 7599,
#         "name" => "CineSpark Motion Media",
#          "url" => "https://www.igdb.com/companies/cinespark-motion-media"
#     },
#     [10] {
#           "id" => 5600,
#         "name" => "Fukufuku",
#          "url" => "https://www.igdb.com/companies/fukufuku"
#     },
#     [11] {
#           "id" => 7601,
#         "name" => "Room 222 Studios",
#          "url" => "https://www.igdb.com/companies/room-222-studios"
#     },
#     [12] {
#           "id" => 7602,
#         "name" => "Hidden Gems",
#          "url" => "https://www.igdb.com/companies/hidden-gems"
#     },
#     [13] {
#           "id" => 5604,
#         "name" => "Shanghai Birds Entertainment",
#          "url" => "https://www.igdb.com/companies/shanghai-birds-entertainment"
#     },
#     [14] {
#           "id" => 5605,
#         "name" => "Tang Digital Information",
#          "url" => "https://www.igdb.com/companies/tang-digital-information"
#     },
#     [15] {
#           "id" => 5606,
#         "name" => "CBC Radio-Canada",
#          "url" => "https://www.igdb.com/companies/cbc-radio-canada"
#     },
#     [16] {
#           "id" => 5607,
#         "name" => "CNN Image Source",
#          "url" => "https://www.igdb.com/companies/cnn-image-source"
#     },
#     [17] {
#           "id" => 7605,
#         "name" => "Golgoth Studio",
#          "url" => "https://www.igdb.com/companies/golgoth-studio"
#     },
#     [18] {
#           "id" => 5609,
#         "name" => "Madison Ave. Casting & Service",
#          "url" => "https://www.igdb.com/companies/madison-ave-casting-and-service"
#     },
#     [19] {
#           "id" => 5610,
#         "name" => "Millie Tom Casting",
#          "url" => "https://www.igdb.com/companies/millie-tom-casting"
#     },
#     [20] {
#           "id" => 7607,
#         "name" => "Digital Reality Software & Playbox",
#          "url" => "https://www.igdb.com/companies/digital-reality-software-and-playbox"
#     },
#     [21] {
#           "id" => 5613,
#         "name" => "Shutterstock",
#          "url" => "https://www.igdb.com/companies/shutterstock"
#     },
#     [22] {
#           "id" => 7609,
#         "name" => "Big Robot Ltd",
#          "url" => "https://www.igdb.com/companies/big-robot-ltd"
#     },
#     [23] {
#           "id" => 5615,
#         "name" => "Wanted! Post-Production",
#          "url" => "https://www.igdb.com/companies/wanted-post-production"
#     },
#     [24] {
#           "id" => 7610,
#         "name" => "ExDream GmbH",
#          "url" => "https://www.igdb.com/companies/exdream-gmbh"
#     },
#     [25] {
#           "id" => 5617,
#         "name" => "XYZ RBG",
#          "url" => "https://www.igdb.com/companies/xyz-rbg"
#     },
#     [26] {
#           "id" => 5619,
#         "name" => "Uisce Massmedia",
#          "url" => "https://www.igdb.com/companies/uisce-massmedia"
#     },
#     [27] {
#           "id" => 5620,
#         "name" => "Intragames",
#          "url" => "https://www.igdb.com/companies/intragames"
#     },
#     [28] {
#           "id" => 5621,
#         "name" => "Team Echelon",
#          "url" => "https://www.igdb.com/companies/team-echelon"
#     },
#     [29] {
#           "id" => 5622,
#         "name" => "Hit Detection",
#          "url" => "https://www.igdb.com/companies/hit-detection"
#     },
#     [30] {
#           "id" => 5623,
#         "name" => "Blind",
#          "url" => "https://www.igdb.com/companies/blind"
#     },
#     [31] {
#           "id" => 5624,
#         "name" => "Forge Studios",
#          "url" => "https://www.igdb.com/companies/forge-studios"
#     },
#     [32] {
#           "id" => 5625,
#         "name" => "Centroid",
#          "url" => "https://www.igdb.com/companies/centroid"
#     },
#     [33] {
#           "id" => 5626,
#         "name" => "Herold Studios",
#          "url" => "https://www.igdb.com/companies/herold-studios"
#     },
#     [34] {
#           "id" => 5627,
#         "name" => "ARU Chicago",
#          "url" => "https://www.igdb.com/companies/aru-chicago"
#     },
#     [35] {
#           "id" => 5628,
#         "name" => "American Agency",
#          "url" => "https://www.igdb.com/companies/american-agency"
#     },
#     [36] {
#           "id" => 5629,
#         "name" => "Just Voices",
#          "url" => "https://www.igdb.com/companies/just-voices"
#     },
#     [37] {
#           "id" => 5630,
#         "name" => "Reaching4Stars",
#          "url" => "https://www.igdb.com/companies/reaching4stars"
#     },
#     [38] {
#           "id" => 5631,
#         "name" => "Stewart Talent",
#          "url" => "https://www.igdb.com/companies/stewart-talent"
#     },
#     [39] {
#           "id" => 5632,
#         "name" => "Crytek Sofia",
#          "url" => "https://www.igdb.com/companies/crytek-sofia"
#     },
#     [40] {
#           "id" => 5633,
#         "name" => "Crytek Seoul",
#          "url" => "https://www.igdb.com/companies/crytek-seoul"
#     },
#     [41] {
#           "id" => 5634,
#         "name" => "Crytek Shanghai",
#          "url" => "https://www.igdb.com/companies/crytek-shanghai"
#     },
#     [42] {
#           "id" => 5635,
#         "name" => "Ursula Haas Makeup School",
#          "url" => "https://www.igdb.com/companies/ursula-haas-makeup-school"
#     },
#     [43] {
#           "id" => 5636,
#         "name" => "Bogenschuetzen Frankurt",
#          "url" => "https://www.igdb.com/companies/bogenschuetzen-frankurt"
#     },
#     [44] {
#           "id" => 5637,
#         "name" => "Cakewalk",
#          "url" => "https://www.igdb.com/companies/cakewalk"
#     },
#     [45] {
#           "id" => 5638,
#         "name" => "Triumph Motorcycles",
#          "url" => "https://www.igdb.com/companies/triumph-motorcycles"
#     },
#     [46] {
#           "id" => 5639,
#         "name" => "Doc Martins",
#          "url" => "https://www.igdb.com/companies/doc-martins"
#     },
#     [47] {
#           "id" => 5640,
#         "name" => "Avalon",
#          "url" => "https://www.igdb.com/companies/avalon"
#     },
#     [48] {
#           "id" => 5641,
#         "name" => "3DFX",
#          "url" => "https://www.igdb.com/companies/3dfx"
#     },
#     [49] {
#           "id" => 5642,
#         "name" => "Viacom Consumer Products",
#          "url" => "https://www.igdb.com/companies/viacom-consumer-products"
#     },
#     [ 0] {
#            "id" => 5643,
#          "name" => "Screen Themes",
#           "url" => "https://www.igdb.com/companies/screen-themes"
#      },
#      [ 1] {
#            "id" => 5644,
#          "name" => "Digital Island",
#           "url" => "https://www.igdb.com/companies/digital-island"
#      },
#      [ 2] {
#            "id" => 5645,
#          "name" => "RedWest C",
#           "url" => "https://www.igdb.com/companies/redwest-c"
#      },
#      [ 3] {
#            "id" => 5646,
#          "name" => "Jungle Studios",
#           "url" => "https://www.igdb.com/companies/jungle-studios"
#      },
#      [ 4] {
#            "id" => 5647,
#          "name" => "Station X Studio",
#           "url" => "https://www.igdb.com/companies/station-x-studio"
#      },
#      [ 5] {
#            "id" => 5648,
#          "name" => "Bright Pictures",
#           "url" => "https://www.igdb.com/companies/bright-pictures"
#      },
#      [ 6] {
#            "id" => 5649,
#          "name" => "Virtual World Entertainment",
#           "url" => "https://www.igdb.com/companies/virtual-world-entertainment"
#      },
#      [ 7] {
#            "id" => 5650,
#          "name" => "Ben Kitay Studios",
#           "url" => "https://www.igdb.com/companies/ben-kitay-studios"
#      },
#      [ 8] {
#            "id" => 5651,
#          "name" => "Mix Magic",
#           "url" => "https://www.igdb.com/companies/mix-magic"
#      },
#      [ 9] {
#            "id" => 5652,
#          "name" => "25th Edition",
#           "url" => "https://www.igdb.com/companies/25th-edition"
#      },
#      [10] {
#            "id" => 5653,
#          "name" => "SDL International",
#           "url" => "https://www.igdb.com/companies/sdl-international"
#      },
#      [11] {
#            "id" => 5654,
#          "name" => "Project Synthesis",
#           "url" => "https://www.igdb.com/companies/project-synthesis"
#      },
#      [12] {
#            "id" => 5655,
#          "name" => "The Effects Network",
#           "url" => "https://www.igdb.com/companies/the-effects-network"
#      },
#      [13] {
#            "id" => 5656,
#          "name" => "ADL Services",
#           "url" => "https://www.igdb.com/companies/adl-services"
#      },
#      [14] {
#            "id" => 5657,
#          "name" => "Eldorado High School ROTC",
#           "url" => "https://www.igdb.com/companies/eldorado-high-school-rotc"
#      },
#      [15] {
#            "id" => 5658,
#          "name" => "Hahn's World of Surplus",
#           "url" => "https://www.igdb.com/companies/hahns-world-of-surplus"
#      },
#      [16] {
#            "id" => 5659,
#          "name" => "Buzzy's Recording",
#           "url" => "https://www.igdb.com/companies/buzzys-recording"
#      },
#      [17] {
#            "id" => 5660,
#          "name" => "Junco MultiMedia",
#           "url" => "https://www.igdb.com/companies/junco-multimedia"
#      },
#      [18] {
#            "id" => 7615,
#          "name" => "Jet Set Games",
#           "url" => "https://www.igdb.com/companies/jet-set-games"
#      },
#      [19] {
#            "id" => 5664,
#          "name" => "Exodus",
#           "url" => "https://www.igdb.com/companies/exodus"
#      },
#      [20] {
#            "id" => 7616,
#          "name" => "Smudged Cat Games Ltd",
#           "url" => "https://www.igdb.com/companies/smudged-cat-games-ltd"
#      },
#      [21] {
#            "id" => 5667,
#          "name" => "Studio City",
#           "url" => "https://www.igdb.com/companies/studio-city"
#      },
#      [22] {
#            "id" => 5668,
#          "name" => "Kenyon Wells",
#           "url" => "https://www.igdb.com/companies/kenyon-wells"
#      },
#      [23] {
#            "id" => 5670,
#          "name" => "Square Enix America",
#           "url" => "https://www.igdb.com/companies/square-enix-america"
#      },
#      [24] {
#            "id" => 7621,
#          "name" => "Cloud 9 Studio",
#           "url" => "https://www.igdb.com/companies/cloud-9-studio"
#      },
#      [25] {
#            "id" => 5672,
#          "name" => "Sid Lee",
#           "url" => "https://www.igdb.com/companies/sid-lee"
#      },
#      [26] {
#            "id" => 7624,
#          "name" => "BitSits Games",
#           "url" => "https://www.igdb.com/companies/bitsits-games"
#      },
#      [27] {
#            "id" => 5675,
#          "name" => "Yumekobo",
#           "url" => "https://www.igdb.com/companies/yumekobo"
#      },
#      [28] {
#            "id" => 7626,
#          "name" => "O'Henry Sound Studios",
#           "url" => "https://www.igdb.com/companies/ohenry-sound-studios"
#      },
#      [29] {
#            "id" => 7627,
#          "name" => "Cubed Productions LLC",
#           "url" => "https://www.igdb.com/companies/cubed-productions-llc"
#      },
#      [30] {
#            "id" => 5677,
#          "name" => "America Video Entertainment",
#           "url" => "https://www.igdb.com/companies/america-video-entertainment"
#      },
#      [31] {
#            "id" => 5678,
#          "name" => "ALICE IN DISSONANCE",
#           "url" => "https://www.igdb.com/companies/alice-in-dissonance"
#      },
#      [32] {
#            "id" => 7631,
#          "name" => "Chaosium Inc",
#           "url" => "https://www.igdb.com/companies/chaosium-inc"
#      },
#      [33] {
#            "id" => 5680,
#          "name" => "Blackmill Games",
#           "url" => "https://www.igdb.com/companies/blackmill-games"
#      },
#      [34] {
#            "id" => 7636,
#          "name" => "Kiz Studios",
#           "url" => "https://www.igdb.com/companies/kiz-studios"
#      },
#      [35] {
#            "id" => 5682,
#          "name" => "Sound and More",
#           "url" => "https://www.igdb.com/companies/sound-and-more"
#      },
#      [36] {
#            "id" => 7639,
#          "name" => "Securom",
#           "url" => "https://www.igdb.com/companies/securom"
#      },
#      [37] {
#            "id" => 5685,
#          "name" => "Comgad",
#           "url" => "https://www.igdb.com/companies/comgad"
#      },
#      [38] {
#            "id" => 7641,
#          "name" => "MZone Studio",
#           "url" => "https://www.igdb.com/companies/mzone-studio"
#      },
#      [39] {
#            "id" => 5687,
#          "name" => "DLM International",
#           "url" => "https://www.igdb.com/companies/dlm-international"
#      },
#      [40] {
#            "id" => 7643,
#          "name" => "Prelight",
#           "url" => "https://www.igdb.com/companies/prelight"
#      },
#      [41] {
#            "id" => 5688,
#          "name" => "Loc&More",
#           "url" => "https://www.igdb.com/companies/loc-and-more"
#      },
#      [42] {
#            "id" => 7645,
#          "name" => "Vienna Symphonic Libary",
#           "url" => "https://www.igdb.com/companies/vienna-symphonic-libary"
#      },
#      [43] {
#            "id" => 5690,
#          "name" => "Hydra",
#           "url" => "https://www.igdb.com/companies/hydra"
#      },
#      [44] {
#            "id" => 5691,
#          "name" => "Juice",
#           "url" => "https://www.igdb.com/companies/juice"
#      },
#      [45] {
#            "id" => 7647,
#          "name" => "Atari Interactive",
#           "url" => "https://www.igdb.com/companies/atari-interactive"
#      },
#      [46] {
#            "id" => 7648,
#          "name" => "Alerte Orange",
#           "url" => "https://www.igdb.com/companies/alerte-orange"
#      },
#      [47] {
#            "id" => 7649,
#          "name" => "Visual Link",
#           "url" => "https://www.igdb.com/companies/visual-link"
#      },
#      [48] {
#            "id" => 7650,
#          "name" => "Carburant",
#           "url" => "https://www.igdb.com/companies/carburant"
#      },
#      [49] {
#            "id" => 7651,
#          "name" => "Super Gazole",
#           "url" => "https://www.igdb.com/companies/super-gazole"
#      },
#      [ 0] {
#            "id" => 7652,
#          "name" => "DAS Team",
#           "url" => "https://www.igdb.com/companies/das-team"
#      },
#      [ 1] {
#            "id" => 7653,
#          "name" => "EDS",
#           "url" => "https://www.igdb.com/companies/eds"
#      },
#      [ 2] {
#            "id" => 7654,
#          "name" => "Codemasters KL",
#           "url" => "https://www.igdb.com/companies/codemasters-kl"
#      },
#      [ 3] {
#            "id" => 7655,
#          "name" => "Stick Man Studios",
#           "url" => "https://www.igdb.com/companies/stick-man-studios"
#      },
#      [ 4] {
#            "id" => 7656,
#          "name" => "Glass Egg",
#           "url" => "https://www.igdb.com/companies/glass-egg"
#      },
#      [ 5] {
#            "id" => 7657,
#          "name" => "Renault Merchandising",
#           "url" => "https://www.igdb.com/companies/renault-merchandising"
#      },
#      [ 6] {
#            "id" => 7658,
#          "name" => "Pixelfaunts Inc.",
#           "url" => "https://www.igdb.com/companies/pixelfaunts-inc"
#      },
#      [ 7] {
#            "id" => 7659,
#          "name" => "Ignite Productions",
#           "url" => "https://www.igdb.com/companies/ignite-productions"
#      },
#      [ 8] {
#            "id" => 7660,
#          "name" => "Thierry Words of Magic",
#           "url" => "https://www.igdb.com/companies/thierry-words-of-magic"
#      },
#      [ 9] {
#            "id" => 7661,
#          "name" => "Clean Cuts Music and Sound Design",
#           "url" => "https://www.igdb.com/companies/clean-cuts-music-and-sound-design"
#      },
#      [10] {
#            "id" => 7662,
#          "name" => "Ignited LLC",
#           "url" => "https://www.igdb.com/companies/ignited-llc"
#      },
#      [11] {
#            "id" => 7663,
#          "name" => "Dreamworks",
#           "url" => "https://www.igdb.com/companies/dreamworks"
#      },
#      [12] {
#            "id" => 7664,
#          "name" => "Def Jam Records",
#           "url" => "https://www.igdb.com/companies/def-jam-records"
#      },
#      [13] {
#            "id" => 7665,
#          "name" => "Bardel Entertainment",
#           "url" => "https://www.igdb.com/companies/bardel-entertainment"
#      },
#      [14] {
#            "id" => 7666,
#          "name" => "Studio X Labs",
#           "url" => "https://www.igdb.com/companies/studio-x-labs"
#      },
#      [15] {
#            "id" => 7667,
#          "name" => "Driftwood Productions",
#           "url" => "https://www.igdb.com/companies/driftwood-productions"
#      },
#      [16] {
#            "id" => 7668,
#          "name" => "Quad Recording Studios",
#           "url" => "https://www.igdb.com/companies/quad-recording-studios"
#      },
#      [17] {
#            "id" => 7669,
#          "name" => "The Hit Factory",
#           "url" => "https://www.igdb.com/companies/the-hit-factory"
#      },
#      [18] {
#            "id" => 7670,
#          "name" => "Leading Light Conceptual Design",
#           "url" => "https://www.igdb.com/companies/leading-light-conceptual-design"
#      },
#      [19] {
#            "id" => 7671,
#          "name" => "Long Mountain",
#           "url" => "https://www.igdb.com/companies/long-mountain"
#      },
#      [20] {
#            "id" => 7672,
#          "name" => "Vertical Slice",
#           "url" => "https://www.igdb.com/companies/vertical-slice"
#      },
#      [21] {
#            "id" => 7673,
#          "name" => "Bob & Barn",
#           "url" => "https://www.igdb.com/companies/bob-and-barn--1"
#      },
#      [22] {
#            "id" => 7674,
#          "name" => "Shepperton Studios",
#           "url" => "https://www.igdb.com/companies/shepperton-studios"
#      },
#      [23] {
#            "id" => 7675,
#          "name" => "Localsoft Audio",
#           "url" => "https://www.igdb.com/companies/localsoft-audio"
#      },
#      [24] {
#            "id" => 5693,
#          "name" => "Human Ark",
#           "url" => "https://www.igdb.com/companies/human-ark"
#      },
#      [25] {
#            "id" => 5696,
#          "name" => "D3T Limited",
#           "url" => "https://www.igdb.com/companies/d3t-limited"
#      },
#      [26] {
#            "id" => 7680,
#          "name" => "CyberCoconut",
#           "url" => "https://www.igdb.com/companies/cybercoconut"
#      },
#      [27] {
#            "id" => 5698,
#          "name" => "Take One D.O.O.",
#           "url" => "https://www.igdb.com/companies/take-one-doo"
#      },
#      [28] {
#            "id" => 5699,
#          "name" => "Fascinate",
#           "url" => "https://www.igdb.com/companies/fascinate"
#      },
#      [29] {
#            "id" => 5700,
#          "name" => "Orphic Media",
#           "url" => "https://www.igdb.com/companies/orphic-media"
#      },
#      [30] {
#            "id" => 5702,
#          "name" => "VideoGameConsulting",
#           "url" => "https://www.igdb.com/companies/videogameconsulting"
#      },
#      [31] {
#            "id" => 5703,
#          "name" => "Full Sail User Experience Center",
#           "url" => "https://www.igdb.com/companies/full-sail-user-experience-center"
#      },
#      [32] {
#            "id" => 7685,
#          "name" => "Luigi Di Guida",
#           "url" => "https://www.igdb.com/companies/luigi-di-guida"
#      },
#      [33] {
#            "id" => 5706,
#          "name" => "Cenega Czech",
#           "url" => "https://www.igdb.com/companies/cenega-czech"
#      },
#      [34] {
#            "id" => 5707,
#          "name" => "Edlee Entertainment",
#           "url" => "https://www.igdb.com/companies/edlee-entertainment"
#      },
#      [35] {
#            "id" => 7687,
#          "name" => "Mathieu Renaudat",
#           "url" => "https://www.igdb.com/companies/mathieu-renaudat--1"
#      },
#      [36] {
#            "id" => 5709,
#          "name" => "Bandai Namco Games Korea",
#           "url" => "https://www.igdb.com/companies/bandai-namco-games-korea"
#      },
#      [37] {
#            "id" => 5710,
#          "name" => "ComputerLand",
#           "url" => "https://www.igdb.com/companies/computerland"
#      },
#      [38] {
#            "id" => 5711,
#          "name" => "SC Best Distribution",
#           "url" => "https://www.igdb.com/companies/sc-best-distribution"
#      },
#      [39] {
#            "id" => 7690,
#          "name" => "Phigames",
#           "url" => "https://www.igdb.com/companies/phigames"
#      },
#      [40] {
#            "id" => 7691,
#          "name" => "Simutronics",
#           "url" => "https://www.igdb.com/companies/simutronics"
#      },
#      [41] {
#            "id" => 7692,
#          "name" => "Desunoya",
#           "url" => "https://www.igdb.com/companies/desunoya"
#      },
#      [42] {
#            "id" => 5713,
#          "name" => "Megarom Interactive",
#           "url" => "https://www.igdb.com/companies/megarom-interactive"
#      },
#      [43] {
#            "id" => 5714,
#          "name" => "EpicSoft",
#           "url" => "https://www.igdb.com/companies/epicsoft"
#      },
#      [44] {
#            "id" => 7725,
#          "name" => "Unfinished Pixel",
#           "url" => "https://www.igdb.com/companies/unfinished-pixel"
#      },
#      [45] {
#            "id" => 7726,
#          "name" => "SUKEBAN",
#           "url" => "https://www.igdb.com/companies/sukeban"
#      },
#      [46] {
#            "id" => 5718,
#          "name" => "Mickey's Company",
#           "url" => "https://www.igdb.com/companies/mickeys-company"
#      },
#      [47] {
#            "id" => 7728,
#          "name" => "Blackmeal",
#           "url" => "https://www.igdb.com/companies/blackmeal"
#      },
#      [48] {
#            "id" => 5720,
#          "name" => "Graphic Takora",
#           "url" => "https://www.igdb.com/companies/graphic-takora"
#      },
#      [49] {
#            "id" => 7729,
#          "name" => "Figs",
#           "url" => "https://www.igdb.com/companies/figs"
#      },
#      [ 0] {
#            "id" => 7730,
#          "name" => "Native Prime",
#           "url" => "https://www.igdb.com/companies/native-prime"
#      },
#      [ 1] {
#            "id" => 5723,
#          "name" => "Bihou",
#           "url" => "https://www.igdb.com/companies/bihou"
#      },
#      [ 2] {
#            "id" => 5724,
#          "name" => "Exmachina",
#           "url" => "https://www.igdb.com/companies/exmachina"
#      },
#      [ 3] {
#            "id" => 5725,
#          "name" => "Menfond",
#           "url" => "https://www.igdb.com/companies/menfond"
#      },
#      [ 4] {
#            "id" => 5726,
#          "name" => "Tommy & Co",
#           "url" => "https://www.igdb.com/companies/tommy-and-co"
#      },
#      [ 5] {
#            "id" => 7732,
#          "name" => "Betafix Services",
#           "url" => "https://www.igdb.com/companies/betafix-services"
#      },
#      [ 6] {
#            "id" => 5728,
#          "name" => "Image Studio 109",
#           "url" => "https://www.igdb.com/companies/image-studio-109"
#      },
#      [ 7] {
#            "id" => 5729,
#          "name" => "NHK Promotion",
#           "url" => "https://www.igdb.com/companies/nhk-promotion"
#      },
#      [ 8] {
#            "id" => 7734,
#          "name" => "Virtual Mix",
#           "url" => "https://www.igdb.com/companies/virtual-mix"
#      },
#      [ 9] {
#            "id" => 7735,
#          "name" => "L2P",
#           "url" => "https://www.igdb.com/companies/l2p"
#      },
#      [10] {
#            "id" => 5738,
#          "name" => "Jay Film",
#           "url" => "https://www.igdb.com/companies/jay-film"
#      },
#      [11] {
#            "id" => 5740,
#          "name" => "Digital Design Studio",
#           "url" => "https://www.igdb.com/companies/digital-design-studio"
#      },
#      [12] {
#            "id" => 7738,
#          "name" => "Topo Swope Talent",
#           "url" => "https://www.igdb.com/companies/topo-swope-talent"
#      },
#      [13] {
#            "id" => 5742,
#          "name" => "81 Entertainment",
#           "url" => "https://www.igdb.com/companies/81-entertainment"
#      },
#      [14] {
#            "id" => 5743,
#          "name" => "Xtreme Studios",
#           "url" => "https://www.igdb.com/companies/xtreme-studios"
#      },
#      [15] {
#            "id" => 5744,
#          "name" => "Northwest Boy Choir",
#           "url" => "https://www.igdb.com/companies/northwest-boy-choir"
#      },
#      [16] {
#            "id" => 7741,
#          "name" => "Evocati",
#           "url" => "https://www.igdb.com/companies/evocati"
#      },
#      [17] {
#            "id" => 5747,
#          "name" => "College Park",
#           "url" => "https://www.igdb.com/companies/college-park"
#      },
#      [18] {
#            "id" => 5748,
#          "name" => "Stunt Grunts",
#           "url" => "https://www.igdb.com/companies/stunt-grunts"
#      },
#      [19] {
#            "id" => 7744,
#          "name" => "Toon Platoon Casting",
#           "url" => "https://www.igdb.com/companies/toon-platoon-casting"
#      },
#      [20] {
#            "id" => 5750,
#          "name" => "Studio Wildcard",
#           "url" => "https://www.igdb.com/companies/studio-wildcard"
#      },
#      [21] {
#            "id" => 5751,
#          "name" => "atelier773",
#           "url" => "https://www.igdb.com/companies/atelier773"
#      },
#      [22] {
#            "id" => 7746,
#          "name" => "Sophia Enterprises",
#           "url" => "https://www.igdb.com/companies/sophia-enterprises"
#      },
#      [23] {
#            "id" => 7747,
#          "name" => "WordBox",
#           "url" => "https://www.igdb.com/companies/wordbox"
#      },
#      [24] {
#            "id" => 7748,
#          "name" => "The Vocal Suite",
#           "url" => "https://www.igdb.com/companies/the-vocal-suite"
#      },
#      [25] {
#            "id" => 7749,
#          "name" => "Soytzer Music",
#           "url" => "https://www.igdb.com/companies/soytzer-music"
#      },
#      [26] {
#            "id" => 5753,
#          "name" => "Ludometrics",
#           "url" => "https://www.igdb.com/companies/ludometrics"
#      },
#      [27] {
#            "id" => 7751,
#          "name" => "Griot Studio",
#           "url" => "https://www.igdb.com/companies/griot-studio"
#      },
#      [28] {
#            "id" => 5755,
#          "name" => "BluSky Sotware",
#           "url" => "https://www.igdb.com/companies/blusky-sotware"
#      },
#      [29] {
#            "id" => 7753,
#          "name" => "Junglevision Software",
#           "url" => "https://www.igdb.com/companies/junglevision-software"
#      },
#      [30] {
#            "id" => 7754,
#          "name" => "Tonproduktion Krauthausen",
#           "url" => "https://www.igdb.com/companies/tonproduktion-krauthausen"
#      },
#      [31] {
#            "id" => 5758,
#          "name" => "Discreet",
#           "url" => "https://www.igdb.com/companies/discreet"
#      },
#      [32] {
#            "id" => 7756,
#          "name" => "Diesel FX",
#           "url" => "https://www.igdb.com/companies/diesel-fx"
#      },
#      [33] {
#            "id" => 5761,
#          "name" => "Eldoren Consulting",
#           "url" => "https://www.igdb.com/companies/eldoren-consulting"
#      },
#      [34] {
#            "id" => 7758,
#          "name" => "Flarewave Inc.",
#           "url" => "https://www.igdb.com/companies/flarewave-inc"
#      },
#      [35] {
#            "id" => 5766,
#          "name" => "MusicWorks",
#           "url" => "https://www.igdb.com/companies/musicworks"
#      },
#      [36] {
#            "id" => 7759,
#          "name" => "Activision Central Studios",
#           "url" => "https://www.igdb.com/companies/activision-central-studios"
#      },
#      [37] {
#            "id" => 7760,
#          "name" => "Northern Mocap Studios AB",
#           "url" => "https://www.igdb.com/companies/northern-mocap-studios-ab"
#      },
#      [38] {
#            "id" => 5769,
#          "name" => "Ubisoft Europe",
#           "url" => "https://www.igdb.com/companies/ubisoft-europe"
#      },
#      [39] {
#            "id" => 5770,
#          "name" => "Stembridge Gun Rental",
#           "url" => "https://www.igdb.com/companies/stembridge-gun-rental"
#      },
#      [40] {
#            "id" => 7762,
#          "name" => "Europa Sound Production",
#           "url" => "https://www.igdb.com/companies/europa-sound-production"
#      },
#      [41] {
#            "id" => 5772,
#          "name" => "Joe Down Studio",
#           "url" => "https://www.igdb.com/companies/joe-down-studio"
#      },
#      [42] {
#            "id" => 5774,
#          "name" => "Buyuu",
#           "url" => "https://www.igdb.com/companies/buyuu"
#      },
#      [43] {
#            "id" => 7765,
#          "name" => "Playsoft",
#           "url" => "https://www.igdb.com/companies/playsoft"
#      },
#      [44] {
#            "id" => 5776,
#          "name" => "Cox",
#           "url" => "https://www.igdb.com/companies/cox"
#      },
#      [45] {
#            "id" => 5777,
#          "name" => "Studio Cockpit",
#           "url" => "https://www.igdb.com/companies/studio-cockpit"
#      },
#      [46] {
#            "id" => 7767,
#          "name" => "MGM Consumer Products",
#           "url" => "https://www.igdb.com/companies/mgm-consumer-products"
#      },
#      [47] {
#            "id" => 7768,
#          "name" => "MGM Bussiness Affairs",
#           "url" => "https://www.igdb.com/companies/mgm-bussiness-affairs"
#      },
#      [48] {
#            "id" => 5780,
#          "name" => "Aces Studio",
#           "url" => "https://www.igdb.com/companies/aces-studio"
#      },
#      [49] {
#            "id" => 5781,
#          "name" => "Ongakukan",
#           "url" => "https://www.igdb.com/companies/ongakukan"
#      },
#      [ 0] {
#            "id" => 7770,
#          "name" => "EA Mocap",
#           "url" => "https://www.igdb.com/companies/ea-mocap"
#      },
#      [ 1] {
#            "id" => 7772,
#          "name" => "The Tape Gallery",
#           "url" => "https://www.igdb.com/companies/the-tape-gallery"
#      },
#      [ 2] {
#            "id" => 5785,
#          "name" => "Vector Film",
#           "url" => "https://www.igdb.com/companies/vector-film"
#      },
#      [ 3] {
#            "id" => 7774,
#          "name" => "Industrial Light and Magic",
#           "url" => "https://www.igdb.com/companies/industrial-light-and-magic"
#      },
#      [ 4] {
#            "id" => 5788,
#          "name" => "Chen PR",
#           "url" => "https://www.igdb.com/companies/chen-pr"
#      },
#      [ 5] {
#            "id" => 5789,
#          "name" => "Lambo Creative",
#           "url" => "https://www.igdb.com/companies/lambo-creative"
#      },
#      [ 6] {
#            "id" => 7777,
#          "name" => "GameFlow",
#           "url" => "https://www.igdb.com/companies/gameflow"
#      },
#      [ 7] {
#            "id" => 5791,
#          "name" => "Three8 Creative",
#           "url" => "https://www.igdb.com/companies/three8-creative"
#      },
#      [ 8] {
#            "id" => 5792,
#          "name" => "Mouldy Toof Studios",
#           "url" => "https://www.igdb.com/companies/mouldy-toof-studios"
#      },
#      [ 9] {
#            "id" => 5794,
#          "name" => "Backstab Games",
#           "url" => "https://www.igdb.com/companies/backstab-games"
#      },
#      [10] {
#            "id" => 5796,
#          "name" => "McClear Digital",
#           "url" => "https://www.igdb.com/companies/mcclear-digital"
#      },
#      [11] {
#            "id" => 5798,
#          "name" => "Raphael Digit & Studio",
#           "url" => "https://www.igdb.com/companies/raphael-digit-and-studio"
#      },
#      [12] {
#            "id" => 5799,
#          "name" => "Dancing Office Saijo",
#           "url" => "https://www.igdb.com/companies/dancing-office-saijo"
#      },
#      [13] {
#            "id" => 7782,
#          "name" => "Enigami",
#           "url" => "https://www.igdb.com/companies/enigami"
#      },
#      [14] {
#            "id" => 5804,
#          "name" => "WIlco Dream Studios",
#           "url" => "https://www.igdb.com/companies/wilco-dream-studios"
#      },
#      [15] {
#            "id" => 5805,
#          "name" => "Mutato Muzika",
#           "url" => "https://www.igdb.com/companies/mutato-muzika"
#      },
#      [16] {
#            "id" => 5806,
#          "name" => "Rancho Canada Elementary School",
#           "url" => "https://www.igdb.com/companies/rancho-canada-elementary-school"
#      },
#      [17] {
#            "id" => 5809,
#          "name" => "New Japan Philharmonic",
#           "url" => "https://www.igdb.com/companies/new-japan-philharmonic"
#      },
#      [18] {
#            "id" => 5811,
#          "name" => "Echo Studio",
#           "url" => "https://www.igdb.com/companies/echo-studio"
#      },
#      [19] {
#            "id" => 7788,
#          "name" => "Rezoner",
#           "url" => "https://www.igdb.com/companies/rezoner"
#      },
#      [20] {
#            "id" => 5815,
#          "name" => "Team Kukai",
#           "url" => "https://www.igdb.com/companies/team-kukai"
#      },
#      [21] {
#            "id" => 5816,
#          "name" => "Fu Long Production",
#           "url" => "https://www.igdb.com/companies/fu-long-production"
#      },
#      [22] {
#            "id" => 5817,
#          "name" => "Planning You",
#           "url" => "https://www.igdb.com/companies/planning-you"
#      },
#      [23] {
#            "id" => 5818,
#          "name" => "The Second Company",
#           "url" => "https://www.igdb.com/companies/the-second-company"
#      },
#      [24] {
#            "id" => 7791,
#          "name" => "McLEAN Simulations",
#           "url" => "https://www.igdb.com/companies/mclean-simulations"
#      },
#      [25] {
#            "id" => 5821,
#          "name" => "Ex-Hummer",
#           "url" => "https://www.igdb.com/companies/ex-hummer"
#      },
#      [26] {
#            "id" => 5822,
#          "name" => "Cyberflix",
#           "url" => "https://www.igdb.com/companies/cyberflix"
#      },
#      [27] {
#            "id" => 7793,
#          "name" => "Zero Sum Games",
#           "url" => "https://www.igdb.com/companies/zero-sum-games"
#      },
#      [28] {
#            "id" => 5826,
#          "name" => "Nice Code",
#           "url" => "https://www.igdb.com/companies/nice-code"
#      },
#      [29] {
#            "id" => 7794,
#          "name" => "Polarware",
#           "url" => "https://www.igdb.com/companies/polarware"
#      },
#      [30] {
#            "id" => 5828,
#          "name" => "Indie Games",
#           "url" => "https://www.igdb.com/companies/indie-games"
#      },
#      [31] {
#            "id" => 7795,
#          "name" => "Battlestate Games",
#           "url" => "https://www.igdb.com/companies/battlestate-games"
#      },
#      [32] {
#            "id" => 7796,
#          "name" => "Lace Games",
#           "url" => "https://www.igdb.com/companies/lace-games"
#      },
#      [33] {
#            "id" => 7797,
#          "name" => "Psychotic Psoftware",
#           "url" => "https://www.igdb.com/companies/psychotic-psoftware"
#      },
#      [34] {
#            "id" => 5831,
#          "name" => "Deep Space",
#           "url" => "https://www.igdb.com/companies/deep-space"
#      },
#      [35] {
#            "id" => 7798,
#          "name" => "Brook Street",
#           "url" => "https://www.igdb.com/companies/brook-street"
#      },
#      [36] {
#            "id" => 7799,
#          "name" => "Collabera",
#           "url" => "https://www.igdb.com/companies/collabera"
#      },
#      [37] {
#            "id" => 5833,
#          "name" => "Outrigger Koubou",
#           "url" => "https://www.igdb.com/companies/outrigger-koubou"
#      },
#      [38] {
#            "id" => 7801,
#          "name" => "VillaSu Music",
#           "url" => "https://www.igdb.com/companies/villasu-music"
#      },
#      [39] {
#            "id" => 5835,
#          "name" => "Littlewitch",
#           "url" => "https://www.igdb.com/companies/littlewitch"
#      },
#      [40] {
#            "id" => 5836,
#          "name" => "Success",
#           "url" => "https://www.igdb.com/companies/success"
#      },
#      [41] {
#            "id" => 7803,
#          "name" => "Dimension",
#           "url" => "https://www.igdb.com/companies/dimension"
#      },
#      [42] {
#            "id" => 7805,
#          "name" => "JFCT",
#           "url" => "https://www.igdb.com/companies/jfct"
#      },
#      [43] {
#            "id" => 5840,
#          "name" => "Seika Corporation",
#           "url" => "https://www.igdb.com/companies/seika-corporation"
#      },
#      [44] {
#            "id" => 7808,
#          "name" => "Budapest Radio Symphony Orchestra",
#           "url" => "https://www.igdb.com/companies/budapest-radio-symphony-orchestra"
#      },
#      [45] {
#            "id" => 5844,
#          "name" => "Jundroo, LLC",
#           "url" => "https://www.igdb.com/companies/jundroo-llc"
#      },
#      [46] {
#            "id" => 7810,
#          "name" => "Ogg Vorbis",
#           "url" => "https://www.igdb.com/companies/ogg-vorbis"
#      },
#      [47] {
#            "id" => 5846,
#          "name" => "Team GrisGris",
#           "url" => "https://www.igdb.com/companies/team-grisgris"
#      },
#      [48] {
#            "id" => 7812,
#          "name" => "Scirpiorus",
#           "url" => "https://www.igdb.com/companies/scirpiorus"
#      },
#      [49] {
#            "id" => 5848,
#          "name" => "BrandGames",
#           "url" => "https://www.igdb.com/companies/brandgames"
#      },
#
#
#   ])
