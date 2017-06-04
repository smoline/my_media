# This file should contain all the record creation needed to seed the database with its default values.
# require 'csv'

Movie.destroy_all
Person.destroy_all
MovieCast.destroy_all
MovieCrew.destroy_all
Favorite.destroy_all
MovieGenre.destroy_all
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
# ]
# )
#
# puts "Created #{Genre.count} genres"

Genre.create!([
    {
          "id" => 1874,
        "name" => "Character Soft",
         "url" => "https://www.igdb.com/companies/character-soft"
    },
    {
          "id" => 1876,
        "name" => "Dorart",
         "url" => "https://www.igdb.com/companies/dorart"
    },
    {
          "id" => 1877,
        "name" => "Tomcat System",
         "url" => "https://www.igdb.com/companies/tomcat-system"
    },
    {
          "id" => 1878,
        "name" => "Powerhouse Animation Studios",
         "url" => "https://www.igdb.com/companies/powerhouse-animation-studios"
    },
    {
          "id" => 1879,
        "name" => "Eight Ball Sound",
         "url" => "https://www.igdb.com/companies/eight-ball-sound"
    },
    {
          "id" => 1880,
        "name" => "West Productions",
         "url" => "https://www.igdb.com/companies/west-productions"
    },
    {
          "id" => 1881,
        "name" => "SPG Studios",
         "url" => "https://www.igdb.com/companies/spg-studios"
    },
    {
          "id" => 1883,
        "name" => "Vector Unit",
         "url" => "https://www.igdb.com/companies/vector-unit"
    },
    {
          "id" => 1884,
        "name" => "CSK Research Institute",
         "url" => "https://www.igdb.com/companies/csk-research-institute"
    },
    {
          "id" => 1885,
        "name" => "CRI Middleware",
         "url" => "https://www.igdb.com/companies/cri-middleware"
    },
    {
          "id" => 3620,
        "name" => "ArcTV Ltd.",
         "url" => "https://www.igdb.com/companies/arctv-ltd"
    },
    {
          "id" => 3621,
        "name" => "toneworx GmbH",
         "url" => "https://www.igdb.com/companies/toneworx-gmbh"
    },
    {
          "id" => 3622,
        "name" => "Draftfcb",
         "url" => "https://www.igdb.com/companies/draftfcb"
    },
    {
          "id" => 3623,
        "name" => "NOA Product Testing",
         "url" => "https://www.igdb.com/companies/noa-product-testing"
    },
    {
          "id" => 3624,
        "name" => "NOE Quality Assurance",
         "url" => "https://www.igdb.com/companies/noe-quality-assurance"
    },
    {
          "id" => 3625,
        "name" => "Aryz",
         "url" => "https://www.igdb.com/companies/aryz"
    },
    {
          "id" => 3626,
        "name" => "Ethos",
         "url" => "https://www.igdb.com/companies/ethos"
    },
    {
          "id" => 3627,
        "name" => "Iemza",
         "url" => "https://www.igdb.com/companies/iemza"
    },
    {
          "id" => 3628,
        "name" => "K74",
         "url" => "https://www.igdb.com/companies/k74"
    },
    {
          "id" => 3629,
        "name" => "Hakka",
         "url" => "https://www.igdb.com/companies/hakka"
    },
    {
          "id" => 3630,
        "name" => "Capcom Japan",
         "url" => "https://www.igdb.com/companies/capcom-japan"
    },
    {
          "id" => 3631,
        "name" => "Universally Speaking Ltd.",
         "url" => "https://www.igdb.com/companies/universally-speaking-ltd"
    },
    {
          "id" => 3632,
        "name" => "Audiomotion Studio",
         "url" => "https://www.igdb.com/companies/audiomotion-studio"
    },
    {
          "id" => 3633,
        "name" => "The Mill",
         "url" => "https://www.igdb.com/companies/the-mill"
    },
    {
          "id" => 3634,
        "name" => "Sperasoft",
         "url" => "https://www.igdb.com/companies/sperasoft"
    },
    {
          "id" => 3635,
        "name" => "Xentrix Studos",
         "url" => "https://www.igdb.com/companies/xentrix-studos"
    },
    {
          "id" => 3636,
        "name" => "Audio Network",
         "url" => "https://www.igdb.com/companies/audio-network"
    },
    {
          "id" => 3637,
        "name" => "Windham Classics Corporation",
         "url" => "https://www.igdb.com/companies/windham-classics-corporation"
    },
    {
          "id" => 3638,
        "name" => "The Northwest Sinfonia",
         "url" => "https://www.igdb.com/companies/the-northwest-sinfonia"
    },
    {
          "id" => 3639,
        "name" => "Bratislava Symphony",
         "url" => "https://www.igdb.com/companies/bratislava-symphony"
    },
    {
          "id" => 3640,
        "name" => "Bratislave Symphony",
         "url" => "https://www.igdb.com/companies/bratislave-symphony"
    },
    {
          "id" => 3641,
        "name" => "Studio 1 Slovak Radio",
         "url" => "https://www.igdb.com/companies/studio-1-slovak-radio"
    },
    {
          "id" => 3642,
        "name" => "MJR Studios",
         "url" => "https://www.igdb.com/companies/mjr-studios"
    },
    {
          "id" => 3643,
        "name" => "Steambot",
         "url" => "https://www.igdb.com/companies/steambot"
    },
    {
          "id" => 3644,
        "name" => "Valkyrie Entertainment",
         "url" => "https://www.igdb.com/companies/valkyrie-entertainment"
    },
    {
          "id" => 3645,
        "name" => "Sixmorevodka",
         "url" => "https://www.igdb.com/companies/sixmorevodka"
    },
    {
          "id" => 3646,
        "name" => "Goldtooth Creative Agency",
         "url" => "https://www.igdb.com/companies/goldtooth-creative-agency"
    },
    {
          "id" => 3647,
        "name" => "Digital Domain Productions",
         "url" => "https://www.igdb.com/companies/digital-domain-productions"
    },
    {
          "id" => 3648,
        "name" => "Division48",
         "url" => "https://www.igdb.com/companies/division48"
    },
    {
          "id" => 3649,
        "name" => "The Famous Radio Ranch",
         "url" => "https://www.igdb.com/companies/the-famous-radio-ranch"
    },
    {
          "id" => 3650,
        "name" => "Ubisoft Bucharest",
         "url" => "https://www.igdb.com/companies/ubisoft-bucharest"
    },
    {
          "id" => 3651,
        "name" => "4-Real Intermedia GmbH",
         "url" => "https://www.igdb.com/companies/4-real-intermedia-gmbh"
    },
    {
          "id" => 3652,
        "name" => "Gameloc Localization Services S.L.",
         "url" => "https://www.igdb.com/companies/gameloc-localization-services-sl"
    },
    {
          "id" => 3653,
        "name" => "All Correct Language Solutions",
         "url" => "https://www.igdb.com/companies/all-correct-language-solutions"
    },
    {
          "id" => 3654,
        "name" => "Bug-Tracker Laboratories Inc.",
         "url" => "https://www.igdb.com/companies/bug-tracker-laboratories-inc"
    },
    {
          "id" => 3655,
        "name" => "Ubisoft Pune",
         "url" => "https://www.igdb.com/companies/ubisoft-pune"
    },
    {
          "id" => 3656,
        "name" => "Ubisoft USA",
         "url" => "https://www.igdb.com/companies/ubisoft-usa"
    },
    {
          "id" => 3657,
        "name" => "solocal.de",
         "url" => "https://www.igdb.com/companies/solocal-dot-de"
    },
    {
          "id" => 3658,
        "name" => "Quoted Tradução e Localização",
         "url" => "https://www.igdb.com/companies/quoted-traducao-e-localizacao"
    },
    {
          "id" => 3659,
        "name" => "Roboto Translation",
         "url" => "https://www.igdb.com/companies/roboto-translation"
    },
    {
          "id" => 3541,
        "name" => "VMC Game Labs",
         "url" => "https://www.igdb.com/companies/vmc-game-labs"
    },
    {
          "id" => 3542,
        "name" => "Logrus International",
         "url" => "https://www.igdb.com/companies/logrus-international"
    },
    {
          "id" => 3543,
        "name" => "Igloo Music",
         "url" => "https://www.igdb.com/companies/igloo-music"
    },
    {
          "id" => 3544,
        "name" => "Performance Designed Products",
         "url" => "https://www.igdb.com/companies/performance-designed-products"
    },
    {
          "id" => 3545,
        "name" => "Electronic Data Systems LLC",
         "url" => "https://www.igdb.com/companies/electronic-data-systems-llc"
    },
    {
          "id" => 3546,
        "name" => "Keywords International Ltd",
         "url" => "https://www.igdb.com/companies/keywords-international-ltd--1"
    },
    {
          "id" => 3547,
        "name" => "big idea music productions inc.",
         "url" => "https://www.igdb.com/companies/big-idea-music-productions-inc"
    },
    {
          "id" => 3548,
        "name" => "Kimber Kable",
         "url" => "https://www.igdb.com/companies/kimber-kable"
    },
    {
          "id" => 3549,
        "name" => "FDW-Worldwide",
         "url" => "https://www.igdb.com/companies/fdw-worldwide"
    },
    {
          "id" => 3550,
        "name" => "SHURE",
         "url" => "https://www.igdb.com/companies/shure"
    },
    {
          "id" => 3551,
        "name" => "TASCAM",
         "url" => "https://www.igdb.com/companies/tascam"
    },
    {
          "id" => 3552,
        "name" => "TC-HELICON",
         "url" => "https://www.igdb.com/companies/tc-helicon"
    },
    {
          "id" => 3553,
        "name" => "West LA Music",
         "url" => "https://www.igdb.com/companies/west-la-music"
    },
    {
          "id" => 3554,
        "name" => "VSL",
         "url" => "https://www.igdb.com/companies/vsl"
    },
    {
          "id" => 3555,
        "name" => "Media Grabbers",
         "url" => "https://www.igdb.com/companies/media-grabbers"
    },
    {
          "id" => 3556,
        "name" => "Futurepoly Studios",
         "url" => "https://www.igdb.com/companies/futurepoly-studios"
    },
    {
          "id" => 3557,
        "name" => "Ten Gun Design",
         "url" => "https://www.igdb.com/companies/ten-gun-design"
    },
    {
          "id" => 3558,
        "name" => "AudioSurgery",
         "url" => "https://www.igdb.com/companies/audiosurgery"
    },
    {
          "id" => 3559,
        "name" => "Sound Lab",
         "url" => "https://www.igdb.com/companies/sound-lab"
    },
    {
          "id" => 3560,
        "name" => "Tepo Swaoe Agency",
         "url" => "https://www.igdb.com/companies/tepo-swaoe-agency"
    },
    {
          "id" => 3561,
        "name" => "Ghost UK",
         "url" => "https://www.igdb.com/companies/ghost-uk"
    },
    {
          "id" => 3562,
        "name" => "EA Vancouver",
         "url" => "https://www.igdb.com/companies/ea-vancouver"
    },
    {
          "id" => 3563,
        "name" => "Varvet AB",
         "url" => "https://www.igdb.com/companies/varvet-ab"
    },
    {
          "id" => 3564,
        "name" => "Tiburon Artworks",
         "url" => "https://www.igdb.com/companies/tiburon-artworks"
    },
    {
          "id" => 3565,
        "name" => "Glass Egg Digital Media Ltd.",
         "url" => "https://www.igdb.com/companies/glass-egg-digital-media-ltd"
    },
    {
          "id" => 3566,
        "name" => "Fresh Inc.",
         "url" => "https://www.igdb.com/companies/fresh-inc"
    },
    {
          "id" => 3567,
        "name" => "Mike Hayes Design",
         "url" => "https://www.igdb.com/companies/mike-hayes-design"
    },
    {
          "id" => 3568,
        "name" => "Resolution Digital Studios Chicago",
         "url" => "https://www.igdb.com/companies/resolution-digital-studios-chicago"
    },
    {
          "id" => 3569,
        "name" => "Sound Chemistry LLC",
         "url" => "https://www.igdb.com/companies/sound-chemistry-llc"
    },
    {
          "id" => 3570,
        "name" => "Northwest Sinfonia",
         "url" => "https://www.igdb.com/companies/northwest-sinfonia"
    },
    {
          "id" => 3571,
        "name" => "Studio X, Seattle",
         "url" => "https://www.igdb.com/companies/studio-x-seattle"
    },
    {
          "id" => 3572,
        "name" => "Prologue Films",
         "url" => "https://www.igdb.com/companies/prologue-films"
    },
    {
          "id" => 3573,
        "name" => "Umbra",
         "url" => "https://www.igdb.com/companies/umbra"
    },
    {
          "id" => 3574,
        "name" => "Libera",
         "url" => "https://www.igdb.com/companies/libera"
    },
    {
          "id" => 3575,
        "name" => "London Voices",
         "url" => "https://www.igdb.com/companies/london-voices"
    },
    {
          "id" => 3576,
        "name" => "Abbey Road Studios",
         "url" => "https://www.igdb.com/companies/abbey-road-studios"
    },
    {
          "id" => 3577,
        "name" => "Hog Hill Mill",
         "url" => "https://www.igdb.com/companies/hog-hill-mill"
    },
    {
          "id" => 3578,
        "name" => "Henson Recording Studios",
         "url" => "https://www.igdb.com/companies/henson-recording-studios"
    },
    {
          "id" => 3579,
        "name" => "United Talent Agency",
         "url" => "https://www.igdb.com/companies/united-talent-agency"
    },
    {
          "id" => 3580,
        "name" => "West Coast Armory",
         "url" => "https://www.igdb.com/companies/west-coast-armory"
    },
    {
          "id" => 3581,
        "name" => "Demonware",
         "url" => "https://www.igdb.com/companies/demonware"
    },
    {
          "id" => 3582,
        "name" => "Activision Publishing",
         "url" => "https://www.igdb.com/companies/activision-publishing"
    },
    {
          "id" => 3583,
        "name" => "Step 3",
         "url" => "https://www.igdb.com/companies/step-3"
    },
    {
          "id" => 3584,
        "name" => "NCompass",
         "url" => "https://www.igdb.com/companies/ncompass"
    },
    {
          "id" => 3585,
        "name" => "Midnight Oil",
         "url" => "https://www.igdb.com/companies/midnight-oil"
    },
    {
          "id" => 3586,
        "name" => "72 and Sunny",
         "url" => "https://www.igdb.com/companies/72-and-sunny"
    },
    {
          "id" => 3587,
        "name" => "Edelman Digital",
         "url" => "https://www.igdb.com/companies/edelman-digital"
    },
    {
          "id" => 1871,
        "name" => "GameMaxx",
         "url" => "https://www.igdb.com/companies/gamemaxx"
    },
    {
          "id" => 1872,
        "name" => "C2 Vision",
         "url" => "https://www.igdb.com/companies/c2-vision"
    },
    {
          "id" => 1873,
        "name" => "Culture Publishers",
         "url" => "https://www.igdb.com/companies/culture-publishers"
    },
    {
          "id" => 3660,
        "name" => "Polish PM",
         "url" => "https://www.igdb.com/companies/polish-pm"
    },
    {
          "id" => 3661,
        "name" => "asrec",
         "url" => "https://www.igdb.com/companies/asrec"
    },
    {
          "id" => 3662,
        "name" => "47 Communications",
         "url" => "https://www.igdb.com/companies/47-communications"
    },
    {
          "id" => 3663,
        "name" => "Lunch PR",
         "url" => "https://www.igdb.com/companies/lunch-pr"
    },
    {
          "id" => 3664,
        "name" => "The Code Works",
         "url" => "https://www.igdb.com/companies/the-code-works"
    },
    {
          "id" => 3665,
        "name" => "King Records",
         "url" => "https://www.igdb.com/companies/king-records"
    },
    {
          "id" => 3666,
        "name" => "A-Wave",
         "url" => "https://www.igdb.com/companies/a-wave"
    },
    {
          "id" => 3667,
        "name" => "LOZC G. Amusements",
         "url" => "https://www.igdb.com/companies/lozc-g-amusements"
    },
    {
          "id" => 3668,
        "name" => "Twilight",
         "url" => "https://www.igdb.com/companies/twilight"
    },
    {
          "id" => 3669,
        "name" => "Hookstone",
         "url" => "https://www.igdb.com/companies/hookstone"
    },
    {
          "id" => 3670,
        "name" => "Sofix",
         "url" => "https://www.igdb.com/companies/sofix"
    },
    {
          "id" => 3671,
        "name" => "IGS",
         "url" => "https://www.igdb.com/companies/igs"
    },
    {
          "id" => 3672,
        "name" => "Cyclone System",
         "url" => "https://www.igdb.com/companies/cyclone-system"
    },
    {
          "id" => 3673,
        "name" => "EA Hyderabad",
         "url" => "https://www.igdb.com/companies/ea-hyderabad"
    },
    {
          "id" => 3674,
        "name" => "Digic Pictures",
         "url" => "https://www.igdb.com/companies/digic-pictures"
    },
    {
          "id" => 3675,
        "name" => "The Lyris Quartet",
         "url" => "https://www.igdb.com/companies/the-lyris-quartet"
    },
    {
          "id" => 3676,
        "name" => "Albion Localisations",
         "url" => "https://www.igdb.com/companies/albion-localisations"
    },
    {
          "id" => 3677,
        "name" => "Anakan GmbH",
         "url" => "https://www.igdb.com/companies/anakan-gmbh"
    },
    {
          "id" => 3678,
        "name" => "Pomann Sound",
         "url" => "https://www.igdb.com/companies/pomann-sound"
    },
    {
          "id" => 3679,
        "name" => "Mesopotamia Software",
         "url" => "https://www.igdb.com/companies/mesopotamia-software"
    },
    {
          "id" => 3680,
        "name" => "42 Entertainment",
         "url" => "https://www.igdb.com/companies/42-entertainment"
    },
    {
          "id" => 3681,
        "name" => "CGBot",
         "url" => "https://www.igdb.com/companies/cgbot"
    },
    {
          "id" => 3682,
        "name" => "Digital Domain",
         "url" => "https://www.igdb.com/companies/digital-domain"
    },
    {
          "id" => 3683,
        "name" => "Formosa Interactive",
         "url" => "https://www.igdb.com/companies/formosa-interactive"
    },
    {
          "id" => 3684,
        "name" => "Imaginari Animation Studios",
         "url" => "https://www.igdb.com/companies/imaginari-animation-studios"
    },
    {
          "id" => 3685,
        "name" => "Ozone",
         "url" => "https://www.igdb.com/companies/ozone"
    },
    {
          "id" => 3686,
        "name" => "Chris Daly Glass Studio",
         "url" => "https://www.igdb.com/companies/chris-daly-glass-studio"
    },
    {
          "id" => 3688,
        "name" => "Dinosaur Polo Club",
         "url" => "https://www.igdb.com/companies/dinosaur-polo-club"
    },
    {
          "id" => 3689,
        "name" => "Roll7",
         "url" => "https://www.igdb.com/companies/roll7"
    },
    {
          "id" => 3690,
        "name" => "Tectoy",
         "url" => "https://www.igdb.com/companies/tectoy"
    },
    {
          "id" => 3691,
        "name" => "Meldac",
         "url" => "https://www.igdb.com/companies/meldac"
    },
    {
          "id" => 3692,
        "name" => "Lenar",
         "url" => "https://www.igdb.com/companies/lenar"
    },
    {
          "id" => 3693,
        "name" => "Infinity",
         "url" => "https://www.igdb.com/companies/infinity"
    },
    {
          "id" => 3694,
        "name" => "NuFX",
         "url" => "https://www.igdb.com/companies/nufx"
    },
    {
          "id" => 3695,
        "name" => "Bunch Games",
         "url" => "https://www.igdb.com/companies/bunch-games"
    },
    {
          "id" => 3696,
        "name" => "Andreas Illiger",
         "url" => "https://www.igdb.com/companies/andreas-illiger"
    },
    {
          "id" => 3698,
        "name" => "Loriciels",
         "url" => "https://www.igdb.com/companies/loriciels"
    },
    {
          "id" => 3699,
        "name" => "Movie Software",
         "url" => "https://www.igdb.com/companies/movie-software"
    },
    {
          "id" => 3700,
        "name" => "Hot B",
         "url" => "https://www.igdb.com/companies/hot-b"
    },
    {
          "id" => 3812,
        "name" => "Synergy Voices",
         "url" => "https://www.igdb.com/companies/synergy-voices"
    },
    {
          "id" => 3813,
        "name" => "Air Lyndhurst Studios",
         "url" => "https://www.igdb.com/companies/air-lyndhurst-studios"
    },
    {
          "id" => 3814,
        "name" => "Soho Sound Kitchen",
         "url" => "https://www.igdb.com/companies/soho-sound-kitchen"
    },
    {
          "id" => 3815,
        "name" => "Dhruva Interactive",
         "url" => "https://www.igdb.com/companies/dhruva-interactive"
    },
    {
          "id" => 3816,
        "name" => "Ten24",
         "url" => "https://www.igdb.com/companies/ten24"
    },
    {
          "id" => 3817,
        "name" => "Destructive Creations",
         "url" => "https://www.igdb.com/companies/destructive-creations"
    },
    {
          "id" => 3818,
        "name" => "FlamingLunchBox",
         "url" => "https://www.igdb.com/companies/flaminglunchbox"
    },
    {
          "id" => 3819,
        "name" => "Crazy Moo Games",
         "url" => "https://www.igdb.com/companies/crazy-moo-games"
    },
    {
          "id" => 3821,
        "name" => "flippfly",
         "url" => "https://www.igdb.com/companies/flippfly"
    },
    {
          "id" => 3822,
        "name" => "picroma",
         "url" => "https://www.igdb.com/companies/picroma"
    },
    {
          "id" => 3825,
        "name" => "Alliance Media Holdings",
         "url" => "https://www.igdb.com/companies/alliance-media-holdings"
    }
    [ 0] {
          "id" => 3826,
        "name" => "Serious Brew",
         "url" => "https://www.igdb.com/companies/serious-brew"
    },
    [ 1] {
          "id" => 3827,
        "name" => "Serious Brew",
         "url" => "https://www.igdb.com/companies/serious-brew--1"
    },
    [ 2] {
          "id" => 3830,
        "name" => "Test3 Projects",
         "url" => "https://www.igdb.com/companies/test3-projects"
    },
    [ 3] {
          "id" => 3834,
        "name" => "Brace Yourself Games",
         "url" => "https://www.igdb.com/companies/brace-yourself-games"
    },
    [ 4] {
          "id" => 3835,
        "name" => "Brace Yourself Games",
         "url" => "https://www.igdb.com/companies/brace-yourself-games--1"
    },
    [ 5] {
          "id" => 3836,
        "name" => "devCAT",
         "url" => "https://www.igdb.com/companies/devcat"
    },
    [ 6] {
          "id" => 3837,
        "name" => "Level Up Labs",
         "url" => "https://www.igdb.com/companies/level-up-labs"
    },
    [ 7] {
          "id" => 3838,
        "name" => "Synergistic Software, Inc.",
         "url" => "https://www.igdb.com/companies/synergistic-software-inc"
    },
    [ 8] {
          "id" => 3840,
        "name" => "Jochum Skoglund",
         "url" => "https://www.igdb.com/companies/jochum-skoglund"
    },
    [ 9] {
          "id" => 3841,
        "name" => "Niklas Myrberg",
         "url" => "https://www.igdb.com/companies/niklas-myrberg"
    },
    [10] {
          "id" => 3842,
        "name" => "Santa Cruz games",
         "url" => "https://www.igdb.com/companies/santa-cruz-games"
    },
    [11] {
          "id" => 3843,
        "name" => "GR3 Project",
         "url" => "https://www.igdb.com/companies/gr3-project"
    },
    [12] {
          "id" => 3844,
        "name" => "Firma Studios",
         "url" => "https://www.igdb.com/companies/firma-studios"
    },
    [13] {
          "id" => 3845,
        "name" => "BioWare Austin",
         "url" => "https://www.igdb.com/companies/bioware-austin"
    },
    [14] {
          "id" => 3846,
        "name" => "Warner Bros. Post Production Services",
         "url" => "https://www.igdb.com/companies/warner-bros-post-production-services"
    },
    [15] {
          "id" => 3847,
        "name" => "The London Session Orchestra",
         "url" => "https://www.igdb.com/companies/the-london-session-orchestra"
    },
    [16] {
          "id" => 3848,
        "name" => "SPOV",
         "url" => "https://www.igdb.com/companies/spov"
    },
    [17] {
          "id" => 2021,
        "name" => "Sega Studio USA",
         "url" => "https://www.igdb.com/companies/sega-studio-usa"
    },
    [18] {
          "id" => 2022,
        "name" => "Pitbull Syndicate",
         "url" => "https://www.igdb.com/companies/pitbull-syndicate"
    },
    [19] {
          "id" => 2023,
        "name" => "Sony Music Entertainment Japan",
         "url" => "https://www.igdb.com/companies/sony-music-entertainment-japan"
    },
    [20] {
          "id" => 2024,
        "name" => "Eidetic",
         "url" => "https://www.igdb.com/companies/eidetic"
    },
    [21] {
          "id" => 2025,
        "name" => "Funcom Dublin Ltd.",
         "url" => "https://www.igdb.com/companies/funcom-dublin-ltd"
    },
    [22] {
          "id" => 2027,
        "name" => "Yuke's Future Media Creators",
         "url" => "https://www.igdb.com/companies/yuke-s-future-media-creators"
    },
    [23] {
          "id" => 2028,
        "name" => "DreamFactory",
         "url" => "https://www.igdb.com/companies/dreamfactory"
    },
    [24] {
          "id" => 2029,
        "name" => "Sugar and Rockets",
         "url" => "https://www.igdb.com/companies/sugar-and-rockets"
    },
    [25] {
          "id" => 2030,
        "name" => "Metro Graphics",
         "url" => "https://www.igdb.com/companies/metro-graphics"
    },
    [26] {
          "id" => 2031,
        "name" => "Fube Industries Ltd.",
         "url" => "https://www.igdb.com/companies/fube-industries-ltd"
    },
    [27] {
          "id" => 2032,
        "name" => "Tuning Electronic",
         "url" => "https://www.igdb.com/companies/tuning-electronic"
    },
    [28] {
          "id" => 2033,
        "name" => "Kids Station",
         "url" => "https://www.igdb.com/companies/kids-station"
    },
    [29] {
          "id" => 2034,
        "name" => "XS Games",
         "url" => "https://www.igdb.com/companies/xs-games"
    },
    [30] {
          "id" => 2035,
        "name" => "Play It Games",
         "url" => "https://www.igdb.com/companies/play-it-games"
    },
    [31] {
          "id" => 2036,
        "name" => "Sunrise Interactive",
         "url" => "https://www.igdb.com/companies/sunrise-interactive"
    },
    [32] {
          "id" => 2037,
        "name" => "Ideaworks3D",
         "url" => "https://www.igdb.com/companies/ideaworks3d"
    },
    [33] {
          "id" => 2038,
        "name" => "Overworks",
         "url" => "https://www.igdb.com/companies/overworks"
    },
    [34] {
          "id" => 2039,
        "name" => "Tommo Inc",
         "url" => "https://www.igdb.com/companies/tommo-inc"
    },
    [35] {
          "id" => 2040,
        "name" => "Wanadoo Edition",
         "url" => "https://www.igdb.com/companies/wanadoo-edition"
    },
    [36] {
          "id" => 2041,
        "name" => "Kuusou Kagaku",
         "url" => "https://www.igdb.com/companies/kuusou-kagaku"
    },
    [37] {
          "id" => 2042,
        "name" => "Contrail",
         "url" => "https://www.igdb.com/companies/contrail"
    },
    [38] {
          "id" => 2043,
        "name" => "Equinoxe",
         "url" => "https://www.igdb.com/companies/equinoxe"
    },
    [39] {
          "id" => 2044,
        "name" => "Check Six Games",
         "url" => "https://www.igdb.com/companies/check-six-games"
    },
    [40] {
          "id" => 2045,
        "name" => "LAB Rats Games",
         "url" => "https://www.igdb.com/companies/lab-rats-games"
    },
    [41] {
          "id" => 2046,
        "name" => "Zombie Studios",
         "url" => "https://www.igdb.com/companies/zombie-studios"
    },
    [42] {
          "id" => 2047,
        "name" => "Garakuta-Studios",
         "url" => "https://www.igdb.com/companies/garakuta-studios"
    },
    [43] {
          "id" => 2048,
        "name" => "Blue Planet Software",
         "url" => "https://www.igdb.com/companies/blue-planet-software"
    },
    [44] {
          "id" => 2049,
        "name" => "Konami Hawaii",
         "url" => "https://www.igdb.com/companies/konami-hawaii"
    },
    [45] {
          "id" => 2050,
        "name" => "Jagex Games Studio",
         "url" => "https://www.igdb.com/companies/jagex-games-studio"
    },
    [46] {
          "id" => 2051,
        "name" => "Hands-On Mobile",
         "url" => "https://www.igdb.com/companies/hands-on-mobile"
    },
    [47] {
          "id" => 2052,
        "name" => "NEC Interchannel",
         "url" => "https://www.igdb.com/companies/nec-interchannel"
    },
    [48] {
          "id" => 2053,
        "name" => "Eden Games",
         "url" => "https://www.igdb.com/companies/eden-games"
    },
    [49] {
          "id" => 2054,
        "name" => "Team Viewtiful",
         "url" => "https://www.igdb.com/companies/team-viewtiful"
    }
    [ 0] {
          "id" => 2055,
        "name" => "Clover Studio",
         "url" => "https://www.igdb.com/companies/clover-studio"
    },
    [ 1] {
          "id" => 2056,
        "name" => "NST",
         "url" => "https://www.igdb.com/companies/nst"
    },
    [ 2] {
          "id" => 2058,
        "name" => "Bunkasha",
         "url" => "https://www.igdb.com/companies/bunkasha"
    },
    [ 3] {
          "id" => 2059,
        "name" => "GenePool Software",
         "url" => "https://www.igdb.com/companies/genepool-software"
    },
    [ 4] {
          "id" => 2060,
        "name" => "Mechanic Arms",
         "url" => "https://www.igdb.com/companies/mechanic-arms"
    },
    [ 5] {
          "id" => 2061,
        "name" => "Bomico Entertainment Software",
         "url" => "https://www.igdb.com/companies/bomico-entertainment-software"
    },
    [ 6] {
          "id" => 2062,
        "name" => "7th Level",
         "url" => "https://www.igdb.com/companies/7th-level"
    },
    [ 7] {
          "id" => 2063,
        "name" => "Arzest",
         "url" => "https://www.igdb.com/companies/arzest"
    },
    [ 8] {
          "id" => 2065,
        "name" => "Escape",
         "url" => "https://www.igdb.com/companies/escape"
    },
    [ 9] {
          "id" => 2066,
        "name" => "Nova Games",
         "url" => "https://www.igdb.com/companies/nova-games"
    },
    [10] {
          "id" => 2067,
        "name" => "Dempa Shimbunsha",
         "url" => "https://www.igdb.com/companies/dempa-shimbunsha"
    },
    [11] {
          "id" => 2068,
        "name" => "Magnin and Associates",
         "url" => "https://www.igdb.com/companies/magnin-and-associates"
    },
    [12] {
          "id" => 2069,
        "name" => "Jordan Mechner",
         "url" => "https://www.igdb.com/companies/jordan-mechner"
    },
    [13] {
          "id" => 2070,
        "name" => "Douglas E. Smith",
         "url" => "https://www.igdb.com/companies/douglas-e-smith"
    },
    [14] {
          "id" => 3903,
        "name" => "BioWare Montreal",
         "url" => "https://www.igdb.com/companies/bioware-montreal"
    },
    [15] {
          "id" => 3904,
        "name" => "Towa Chiki",
         "url" => "https://www.igdb.com/companies/towa-chiki"
    },
    [16] {
          "id" => 3905,
        "name" => "Little Worlds Studio",
         "url" => "https://www.igdb.com/companies/little-worlds-studio"
    },
    [17] {
          "id" => 3907,
        "name" => "Creative Patterns",
         "url" => "https://www.igdb.com/companies/creative-patterns"
    },
    [18] {
          "id" => 3908,
        "name" => "Picsoft Studio",
         "url" => "https://www.igdb.com/companies/picsoft-studio"
    },
    [19] {
          "id" => 3909,
        "name" => "Nigoro",
         "url" => "https://www.igdb.com/companies/nigoro"
    },
    [20] {
          "id" => 3910,
        "name" => "Pygmy Studio",
         "url" => "https://www.igdb.com/companies/pygmy-studio"
    },
    [21] {
          "id" => 3912,
        "name" => "Asterizm Corporation",
         "url" => "https://www.igdb.com/companies/asterizm-corporation"
    },
    [22] {
          "id" => 3913,
        "name" => "EnjoyUp Games",
         "url" => "https://www.igdb.com/companies/enjoyup-games"
    },
    [23] {
          "id" => 3914,
        "name" => "Playbox",
         "url" => "https://www.igdb.com/companies/playbox"
    },
    [24] {
          "id" => 3915,
        "name" => "Vortex Media Arts",
         "url" => "https://www.igdb.com/companies/vortex-media-arts"
    },
    [25] {
          "id" => 3916,
        "name" => "Playskool",
         "url" => "https://www.igdb.com/companies/playskool"
    },
    [26] {
          "id" => 3917,
        "name" => "Media Station",
         "url" => "https://www.igdb.com/companies/media-station"
    },
    [27] {
          "id" => 3920,
        "name" => "Toho",
         "url" => "https://www.igdb.com/companies/toho"
    },
    [28] {
          "id" => 3921,
        "name" => "Blendo Games",
         "url" => "https://www.igdb.com/companies/blendo-games"
    },
    [29] {
          "id" => 3922,
        "name" => "Red Rocket Games",
         "url" => "https://www.igdb.com/companies/red-rocket-games"
    },
    [30] {
          "id" => 3924,
        "name" => "Six by nine",
         "url" => "https://www.igdb.com/companies/six-by-nine"
    },
    [31] {
          "id" => 3925,
        "name" => "Nick Jr. Interactive",
         "url" => "https://www.igdb.com/companies/nick-jr-interactive"
    },
    [32] {
          "id" => 3926,
        "name" => "Game Factory",
         "url" => "https://www.igdb.com/companies/game-factory"
    },
    [33] {
          "id" => 3927,
        "name" => "Viacom International",
         "url" => "https://www.igdb.com/companies/viacom-international"
    },
    [34] {
          "id" => 3928,
        "name" => "Ubisoft Chengdu",
         "url" => "https://www.igdb.com/companies/ubisoft-chengdu"
    },
    [35] {
          "id" => 3929,
        "name" => "Les services d'urgence Medic",
         "url" => "https://www.igdb.com/companies/les-services-durgence-medic"
    },
    [36] {
          "id" => 3930,
        "name" => "Hotel 2 Tango",
         "url" => "https://www.igdb.com/companies/hotel-2-tango"
    },
    [37] {
          "id" => 3931,
        "name" => "Studio de I'Est",
         "url" => "https://www.igdb.com/companies/studio-de-iest"
    },
    [38] {
          "id" => 3932,
        "name" => "Paul Johnston Studio",
         "url" => "https://www.igdb.com/companies/paul-johnston-studio"
    },
    [39] {
          "id" => 3933,
        "name" => "Studio 451 Inc.",
         "url" => "https://www.igdb.com/companies/studio-451-inc"
    },
    [40] {
          "id" => 2088,
        "name" => "Brash Entertainment",
         "url" => "https://www.igdb.com/companies/brash-entertainment"
    },
    [41] {
          "id" => 3935,
        "name" => "Studio Technicolor",
         "url" => "https://www.igdb.com/companies/studio-technicolor"
    },
    [42] {
          "id" => 3936,
        "name" => "Wave London",
         "url" => "https://www.igdb.com/companies/wave-london"
    },
    [43] {
          "id" => 2090,
        "name" => "Vir2L Studios",
         "url" => "https://www.igdb.com/companies/vir2l-studios"
    },
    [44] {
          "id" => 3937,
        "name" => "mouse-power GmbH",
         "url" => "https://www.igdb.com/companies/mouse-power-gmbh"
    },
    [45] {
          "id" => 2092,
        "name" => "Imageepoch",
         "url" => "https://www.igdb.com/companies/imageepoch"
    },
    [46] {
          "id" => 3941,
        "name" => "Scillex",
         "url" => "https://www.igdb.com/companies/scillex"
    },
    [47] {
          "id" => 2094,
        "name" => "Transmission Games",
         "url" => "https://www.igdb.com/companies/transmission-games"
    },
    [48] {
          "id" => 3942,
        "name" => "entalize",
         "url" => "https://www.igdb.com/companies/entalize"
    },
    [49] {
          "id" => 2096,
        "name" => "Lightstorm Entertainment",
         "url" => "https://www.igdb.com/companies/lightstorm-entertainment"
    }
    [ 0] {
          "id" => 2055,
        "name" => "Clover Studio",
         "url" => "https://www.igdb.com/companies/clover-studio"
    },
    [ 1] {
          "id" => 2056,
        "name" => "NST",
         "url" => "https://www.igdb.com/companies/nst"
    },
    [ 2] {
          "id" => 2058,
        "name" => "Bunkasha",
         "url" => "https://www.igdb.com/companies/bunkasha"
    },
    [ 3] {
          "id" => 2059,
        "name" => "GenePool Software",
         "url" => "https://www.igdb.com/companies/genepool-software"
    },
    [ 4] {
          "id" => 2060,
        "name" => "Mechanic Arms",
         "url" => "https://www.igdb.com/companies/mechanic-arms"
    },
    [ 5] {
          "id" => 2061,
        "name" => "Bomico Entertainment Software",
         "url" => "https://www.igdb.com/companies/bomico-entertainment-software"
    },
    [ 6] {
          "id" => 2062,
        "name" => "7th Level",
         "url" => "https://www.igdb.com/companies/7th-level"
    },
    [ 7] {
          "id" => 2063,
        "name" => "Arzest",
         "url" => "https://www.igdb.com/companies/arzest"
    },
    [ 8] {
          "id" => 2065,
        "name" => "Escape",
         "url" => "https://www.igdb.com/companies/escape"
    },
    [ 9] {
          "id" => 2066,
        "name" => "Nova Games",
         "url" => "https://www.igdb.com/companies/nova-games"
    },
    [10] {
          "id" => 2067,
        "name" => "Dempa Shimbunsha",
         "url" => "https://www.igdb.com/companies/dempa-shimbunsha"
    },
    [11] {
          "id" => 2068,
        "name" => "Magnin and Associates",
         "url" => "https://www.igdb.com/companies/magnin-and-associates"
    },
    [12] {
          "id" => 2069,
        "name" => "Jordan Mechner",
         "url" => "https://www.igdb.com/companies/jordan-mechner"
    },
    [13] {
          "id" => 2070,
        "name" => "Douglas E. Smith",
         "url" => "https://www.igdb.com/companies/douglas-e-smith"
    },
    [14] {
          "id" => 3903,
        "name" => "BioWare Montreal",
         "url" => "https://www.igdb.com/companies/bioware-montreal"
    },
    [15] {
          "id" => 3904,
        "name" => "Towa Chiki",
         "url" => "https://www.igdb.com/companies/towa-chiki"
    },
    [16] {
          "id" => 3905,
        "name" => "Little Worlds Studio",
         "url" => "https://www.igdb.com/companies/little-worlds-studio"
    },
    [17] {
          "id" => 3907,
        "name" => "Creative Patterns",
         "url" => "https://www.igdb.com/companies/creative-patterns"
    },
    [18] {
          "id" => 3908,
        "name" => "Picsoft Studio",
         "url" => "https://www.igdb.com/companies/picsoft-studio"
    },
    [19] {
          "id" => 3909,
        "name" => "Nigoro",
         "url" => "https://www.igdb.com/companies/nigoro"
    },
    [20] {
          "id" => 3910,
        "name" => "Pygmy Studio",
         "url" => "https://www.igdb.com/companies/pygmy-studio"
    },
    [21] {
          "id" => 3912,
        "name" => "Asterizm Corporation",
         "url" => "https://www.igdb.com/companies/asterizm-corporation"
    },
    [22] {
          "id" => 3913,
        "name" => "EnjoyUp Games",
         "url" => "https://www.igdb.com/companies/enjoyup-games"
    },
    [23] {
          "id" => 3914,
        "name" => "Playbox",
         "url" => "https://www.igdb.com/companies/playbox"
    },
    [24] {
          "id" => 3915,
        "name" => "Vortex Media Arts",
         "url" => "https://www.igdb.com/companies/vortex-media-arts"
    },
    [25] {
          "id" => 3916,
        "name" => "Playskool",
         "url" => "https://www.igdb.com/companies/playskool"
    },
    [26] {
          "id" => 3917,
        "name" => "Media Station",
         "url" => "https://www.igdb.com/companies/media-station"
    },
    [27] {
          "id" => 3920,
        "name" => "Toho",
         "url" => "https://www.igdb.com/companies/toho"
    },
    [28] {
          "id" => 3921,
        "name" => "Blendo Games",
         "url" => "https://www.igdb.com/companies/blendo-games"
    },
    [29] {
          "id" => 3922,
        "name" => "Red Rocket Games",
         "url" => "https://www.igdb.com/companies/red-rocket-games"
    },
    [30] {
          "id" => 3924,
        "name" => "Six by nine",
         "url" => "https://www.igdb.com/companies/six-by-nine"
    },
    [31] {
          "id" => 3925,
        "name" => "Nick Jr. Interactive",
         "url" => "https://www.igdb.com/companies/nick-jr-interactive"
    },
    [32] {
          "id" => 3926,
        "name" => "Game Factory",
         "url" => "https://www.igdb.com/companies/game-factory"
    },
    [33] {
          "id" => 3927,
        "name" => "Viacom International",
         "url" => "https://www.igdb.com/companies/viacom-international"
    },
    [34] {
          "id" => 3928,
        "name" => "Ubisoft Chengdu",
         "url" => "https://www.igdb.com/companies/ubisoft-chengdu"
    },
    [35] {
          "id" => 3929,
        "name" => "Les services d'urgence Medic",
         "url" => "https://www.igdb.com/companies/les-services-durgence-medic"
    },
    [36] {
          "id" => 3930,
        "name" => "Hotel 2 Tango",
         "url" => "https://www.igdb.com/companies/hotel-2-tango"
    },
    [37] {
          "id" => 3931,
        "name" => "Studio de I'Est",
         "url" => "https://www.igdb.com/companies/studio-de-iest"
    },
    [38] {
          "id" => 3932,
        "name" => "Paul Johnston Studio",
         "url" => "https://www.igdb.com/companies/paul-johnston-studio"
    },
    [39] {
          "id" => 3933,
        "name" => "Studio 451 Inc.",
         "url" => "https://www.igdb.com/companies/studio-451-inc"
    },
    [40] {
          "id" => 2088,
        "name" => "Brash Entertainment",
         "url" => "https://www.igdb.com/companies/brash-entertainment"
    },
    [41] {
          "id" => 3935,
        "name" => "Studio Technicolor",
         "url" => "https://www.igdb.com/companies/studio-technicolor"
    },
    [42] {
          "id" => 3936,
        "name" => "Wave London",
         "url" => "https://www.igdb.com/companies/wave-london"
    },
    [43] {
          "id" => 2090,
        "name" => "Vir2L Studios",
         "url" => "https://www.igdb.com/companies/vir2l-studios"
    },
    [44] {
          "id" => 3937,
        "name" => "mouse-power GmbH",
         "url" => "https://www.igdb.com/companies/mouse-power-gmbh"
    },
    [45] {
          "id" => 2092,
        "name" => "Imageepoch",
         "url" => "https://www.igdb.com/companies/imageepoch"
    },
    [46] {
          "id" => 3941,
        "name" => "Scillex",
         "url" => "https://www.igdb.com/companies/scillex"
    },
    [47] {
          "id" => 2094,
        "name" => "Transmission Games",
         "url" => "https://www.igdb.com/companies/transmission-games"
    },
    [48] {
          "id" => 3942,
        "name" => "entalize",
         "url" => "https://www.igdb.com/companies/entalize"
    },
    [49] {
          "id" => 2096,
        "name" => "Lightstorm Entertainment",
         "url" => "https://www.igdb.com/companies/lightstorm-entertainment"
    }
]
~/tiy/FinalProject ᐅ ruby igdb.rb
/usr/local/lib/ruby/gems/2.4.0/gems/awesome_print-1.7.0/lib/awesome_print/formatters/base_formatter.rb:31: warning: constant ::Fixnum is deprecated
[
    [ 0] {
          "id" => 3944,
        "name" => "Latis Global Communications",
         "url" => "https://www.igdb.com/companies/latis-global-communications"
    },
    [ 1] {
          "id" => 3945,
        "name" => "Ubisoft Limited",
         "url" => "https://www.igdb.com/companies/ubisoft-limited"
    },
    [ 2] {
          "id" => 3946,
        "name" => "#30 Jutz Zollern Workroom",
         "url" => "https://www.igdb.com/companies/number-30-jutz-zollern-workroom"
    },
    [ 3] {
          "id" => 2098,
        "name" => "SingleTrac Entertainment Technologies",
         "url" => "https://www.igdb.com/companies/singletrac-entertainment-technologies"
    },
    [ 4] {
          "id" => 3948,
        "name" => "Cybersoft",
         "url" => "https://www.igdb.com/companies/cybersoft"
    },
    [ 5] {
          "id" => 2099,
        "name" => "Silicon Studio",
         "url" => "https://www.igdb.com/companies/silicon-studio"
    },
    [ 6] {
          "id" => 3950,
        "name" => "Blue Turtle",
         "url" => "https://www.igdb.com/companies/blue-turtle"
    },
    [ 7] {
          "id" => 2100,
        "name" => "UFO Interactive Software",
         "url" => "https://www.igdb.com/companies/ufo-interactive-software"
    },
    [ 8] {
          "id" => 3952,
        "name" => "ISCO",
         "url" => "https://www.igdb.com/companies/isco"
    },
    [ 9] {
          "id" => 2102,
        "name" => "Zoo Games",
         "url" => "https://www.igdb.com/companies/zoo-games"
    },
    [10] {
          "id" => 3954,
        "name" => "RSP",
         "url" => "https://www.igdb.com/companies/rsp"
    },
    [11] {
          "id" => 2103,
        "name" => "Aksys Games",
         "url" => "https://www.igdb.com/companies/aksys-games"
    },
    [12] {
          "id" => 2105,
        "name" => "Oberon Interactive",
         "url" => "https://www.igdb.com/companies/oberon-interactive"
    },
    [13] {
          "id" => 3958,
        "name" => "Bandai Namco Games",
         "url" => "https://www.igdb.com/companies/bandai-namco-games"
    },
    [14] {
          "id" => 3959,
        "name" => "Sos",
         "url" => "https://www.igdb.com/companies/sos"
    },
    [15] {
          "id" => 2109,
        "name" => "Icon Games Entertainment",
         "url" => "https://www.igdb.com/companies/icon-games-entertainment"
    },
    [16] {
          "id" => 3961,
        "name" => "SoftClub",
         "url" => "https://www.igdb.com/companies/softclub"
    },
    [17] {
          "id" => 2110,
        "name" => "Happy Happening",
         "url" => "https://www.igdb.com/companies/happy-happening"
    },
    [18] {
          "id" => 2111,
        "name" => "Quotix Software",
         "url" => "https://www.igdb.com/companies/quotix-software"
    },
    [19] {
          "id" => 3963,
        "name" => "Sinfonia Pop Orchestra",
         "url" => "https://www.igdb.com/companies/sinfonia-pop-orchestra"
    },
    [20] {
          "id" => 2117,
        "name" => "Gamenauts",
         "url" => "https://www.igdb.com/companies/gamenauts"
    },
    [21] {
          "id" => 2118,
        "name" => "Oxygen Interactive Software",
         "url" => "https://www.igdb.com/companies/oxygen-interactive-software"
    },
    [22] {
          "id" => 3966,
        "name" => "ESABU",
         "url" => "https://www.igdb.com/companies/esabu"
    },
    [23] {
          "id" => 3967,
        "name" => "Nord Media Films Studio",
         "url" => "https://www.igdb.com/companies/nord-media-films-studio"
    },
    [24] {
          "id" => 2120,
        "name" => "Grounding Inc",
         "url" => "https://www.igdb.com/companies/grounding-inc"
    },
    [25] {
          "id" => 3969,
        "name" => "East West",
         "url" => "https://www.igdb.com/companies/east-west"
    },
    [26] {
          "id" => 3970,
        "name" => "globalvoX",
         "url" => "https://www.igdb.com/companies/globalvox"
    },
    [27] {
          "id" => 2123,
        "name" => "Foxconn Technology Group",
         "url" => "https://www.igdb.com/companies/foxconn-technology-group"
    },
    [28] {
          "id" => 3973,
        "name" => "The Bratislawa Symphnoy Choir",
         "url" => "https://www.igdb.com/companies/the-bratislawa-symphnoy-choir"
    },
    [29] {
          "id" => 2125,
        "name" => "Toontraxx",
         "url" => "https://www.igdb.com/companies/toontraxx"
    },
    [30] {
          "id" => 2126,
        "name" => "Frontline Studios",
         "url" => "https://www.igdb.com/companies/frontline-studios"
    },
    [31] {
          "id" => 2127,
        "name" => "Zuxxes",
         "url" => "https://www.igdb.com/companies/zuxxes"
    },
    [32] {
          "id" => 2128,
        "name" => "Ware Interactive",
         "url" => "https://www.igdb.com/companies/ware-interactive"
    },
    [33] {
          "id" => 3976,
        "name" => "An.X",
         "url" => "https://www.igdb.com/companies/an-dot-x"
    },
    [34] {
          "id" => 3977,
        "name" => "Konami Digital Entertainment B.V.",
         "url" => "https://www.igdb.com/companies/konami-digital-entertainment-bv"
    },
    [35] {
          "id" => 2132,
        "name" => "Bold Games",
         "url" => "https://www.igdb.com/companies/bold-games"
    },
    [36] {
          "id" => 2135,
        "name" => "HyberDevbox Japan",
         "url" => "https://www.igdb.com/companies/hyberdevbox-japan"
    },
    [37] {
          "id" => 3983,
        "name" => "Forcewick Sound Design",
         "url" => "https://www.igdb.com/companies/forcewick-sound-design"
    },
    [38] {
          "id" => 3984,
        "name" => "Nashville Music Scoring Orchestra",
         "url" => "https://www.igdb.com/companies/nashville-music-scoring-orchestra"
    },
    [39] {
          "id" => 3985,
        "name" => "Film Score LLC",
         "url" => "https://www.igdb.com/companies/film-score-llc"
    },
    [40] {
          "id" => 3986,
        "name" => "Arriba Entertainment",
         "url" => "https://www.igdb.com/companies/arriba-entertainment"
    },
    [41] {
          "id" => 3987,
        "name" => "Designware Co. Ltd.",
         "url" => "https://www.igdb.com/companies/designware-co-ltd"
    },
    [42] {
          "id" => 3988,
        "name" => "ZeniMax Australia",
         "url" => "https://www.igdb.com/companies/zenimax-australia"
    },
    [43] {
          "id" => 3989,
        "name" => "Playcast-media",
         "url" => "https://www.igdb.com/companies/playcast-media"
    },
    [44] {
          "id" => 3990,
        "name" => "A10",
         "url" => "https://www.igdb.com/companies/a10"
    },
    [45] {
          "id" => 3991,
        "name" => "Russel",
         "url" => "https://www.igdb.com/companies/russel"
    },
    [46] {
          "id" => 3992,
        "name" => "Ion Storm Support",
         "url" => "https://www.igdb.com/companies/ion-storm-support"
    },
    [47] {
          "id" => 3993,
        "name" => "IMGS, INC.",
         "url" => "https://www.igdb.com/companies/imgs-inc"
    },
    [48] {
          "id" => 3995,
        "name" => "Eidos Interactive Europe",
         "url" => "https://www.igdb.com/companies/eidos-interactive-europe"
    },
    [49] {
          "id" => 3996,
        "name" => "Experimental Gameplay",
         "url" => "https://www.igdb.com/companies/experimental-gameplay"
    }
    [ 0] {
          "id" => 3997,
        "name" => "Gamebase Co., Ltd.",
         "url" => "https://www.igdb.com/companies/gamebase-co-dot-ltd"
    },
    [ 1] {
          "id" => 3998,
        "name" => "Gamebase USA",
         "url" => "https://www.igdb.com/companies/gamebase-usa"
    },
    [ 2] {
          "id" => 3999,
        "name" => "WOMB Music",
         "url" => "https://www.igdb.com/companies/womb-music"
    },
    [ 3] {
          "id" => 4000,
        "name" => "Bug-Tracker INC.",
         "url" => "https://www.igdb.com/companies/bug-tracker-inc"
    },
    [ 4] {
          "id" => 4004,
        "name" => "Sega Germany",
         "url" => "https://www.igdb.com/companies/sega-germany"
    },
    [ 5] {
          "id" => 4006,
        "name" => "Sega Benelux",
         "url" => "https://www.igdb.com/companies/sega-benelux"
    },
    [ 6] {
          "id" => 4008,
        "name" => "Sega Australia",
         "url" => "https://www.igdb.com/companies/sega-australia"
    },
    [ 7] {
          "id" => 4009,
        "name" => "Sanritsu",
         "url" => "https://www.igdb.com/companies/sanritsu"
    },
    [ 8] {
          "id" => 4010,
        "name" => "Macrospace",
         "url" => "https://www.igdb.com/companies/macrospace"
    },
    [ 9] {
          "id" => 4011,
        "name" => "Lost Boys Games",
         "url" => "https://www.igdb.com/companies/lost-boys-games"
    },
    [10] {
          "id" => 4012,
        "name" => "Innocuous Games",
         "url" => "https://www.igdb.com/companies/innocuous-games"
    },
    [11] {
          "id" => 4013,
        "name" => "Active Enterprises",
         "url" => "https://www.igdb.com/companies/active-enterprises"
    },
    [12] {
          "id" => 4014,
        "name" => "Vblank Entertainment",
         "url" => "https://www.igdb.com/companies/vblank-entertainment"
    },
    [13] {
          "id" => 4015,
        "name" => "Recreational Brainware",
         "url" => "https://www.igdb.com/companies/recreational-brainware"
    },
    [14] {
          "id" => 4016,
        "name" => "Minor Key Games",
         "url" => "https://www.igdb.com/companies/minor-key-games"
    },
    [15] {
          "id" => 4017,
        "name" => "Earbash Inc.",
         "url" => "https://www.igdb.com/companies/earbash-inc"
    },
    [16] {
          "id" => 4018,
        "name" => "The Research Centaur",
         "url" => "https://www.igdb.com/companies/the-research-centaur"
    },
    [17] {
          "id" => 4019,
        "name" => "VMC Game Labs, Montreal",
         "url" => "https://www.igdb.com/companies/vmc-game-labs-montreal"
    },
    [18] {
          "id" => 4020,
        "name" => "Trias Digital",
         "url" => "https://www.igdb.com/companies/trias-digital"
    },
    [19] {
          "id" => 4021,
        "name" => "Eastworks",
         "url" => "https://www.igdb.com/companies/eastworks"
    },
    [20] {
          "id" => 4022,
        "name" => "Happy Feet Foley",
         "url" => "https://www.igdb.com/companies/happy-feet-foley"
    },
    [21] {
          "id" => 4023,
        "name" => "Guildhall Leisure Services Ltd.",
         "url" => "https://www.igdb.com/companies/guildhall-leisure-services-ltd"
    },
    [22] {
          "id" => 4026,
        "name" => "Gakken",
         "url" => "https://www.igdb.com/companies/gakken"
    },
    [23] {
          "id" => 4027,
        "name" => "Focus Multimedia",
         "url" => "https://www.igdb.com/companies/focus-multimedia"
    },
    [24] {
          "id" => 4028,
        "name" => "Citizen Software",
         "url" => "https://www.igdb.com/companies/citizen-software"
    },
    [25] {
          "id" => 4029,
        "name" => "Xilam",
         "url" => "https://www.igdb.com/companies/xilam"
    },
    [26] {
          "id" => 4030,
        "name" => "Mobliss",
         "url" => "https://www.igdb.com/companies/mobliss"
    },
    [27] {
          "id" => 4031,
        "name" => "Darkblack",
         "url" => "https://www.igdb.com/companies/darkblack"
    },
    [28] {
          "id" => 4032,
        "name" => "Sapient Corporation",
         "url" => "https://www.igdb.com/companies/sapient-corporation"
    },
    [29] {
          "id" => 4033,
        "name" => "GL33K, LLC",
         "url" => "https://www.igdb.com/companies/gl33k-llc"
    },
    [30] {
          "id" => 4035,
        "name" => "Polyassets United Inc.",
         "url" => "https://www.igdb.com/companies/polyassets-united-inc"
    },
    [31] {
          "id" => 4036,
        "name" => "SomaTone Audio",
         "url" => "https://www.igdb.com/companies/somatone-audio"
    },
    [32] {
          "id" => 4037,
        "name" => "Kylin Magical Image",
         "url" => "https://www.igdb.com/companies/kylin-magical-image"
    },
    [33] {
          "id" => 4038,
        "name" => "Little Red Zombies",
         "url" => "https://www.igdb.com/companies/little-red-zombies"
    },
    [34] {
          "id" => 4039,
        "name" => "Xi'an Panish Informantion Technology",
         "url" => "https://www.igdb.com/companies/xian-panish-informantion-technology"
    },
    [35] {
          "id" => 4040,
        "name" => "Snark Co. Ltd",
         "url" => "https://www.igdb.com/companies/snark-co-ltd"
    },
    [36] {
          "id" => 4041,
        "name" => "The Third Floor Inc.",
         "url" => "https://www.igdb.com/companies/the-third-floor-inc"
    },
    [37] {
          "id" => 4042,
        "name" => "TZWART Software",
         "url" => "https://www.igdb.com/companies/tzwart-software"
    },
    [38] {
          "id" => 4043,
        "name" => "Quantic Labs",
         "url" => "https://www.igdb.com/companies/quantic-labs"
    },
    [39] {
          "id" => 4044,
        "name" => "PitStop Productions",
         "url" => "https://www.igdb.com/companies/pitstop-productions"
    },
    [40] {
          "id" => 4045,
        "name" => "TecMagik",
         "url" => "https://www.igdb.com/companies/tecmagik"
    },
    [41] {
          "id" => 4046,
        "name" => "Manley and Associates Inc",
         "url" => "https://www.igdb.com/companies/manley-and-associates-inc"
    },
    [42] {
          "id" => 4047,
        "name" => "Wanderlust Interactive",
         "url" => "https://www.igdb.com/companies/wanderlust-interactive"
    },
    [43] {
          "id" => 4048,
        "name" => "Super Empire",
         "url" => "https://www.igdb.com/companies/super-empire"
    },
    [44] {
          "id" => 4049,
        "name" => "Ravensburger Interactive Media",
         "url" => "https://www.igdb.com/companies/ravensburger-interactive-media"
    },
    [45] {
          "id" => 4050,
        "name" => "DePaul University students",
         "url" => "https://www.igdb.com/companies/depaul-university-students"
    },
    [46] {
          "id" => 4051,
        "name" => "Kokopeli Digital Studios",
         "url" => "https://www.igdb.com/companies/kokopeli-digital-studios"
    },
    [47] {
          "id" => 4052,
        "name" => "Viacom Entertainment Group",
         "url" => "https://www.igdb.com/companies/viacom-entertainment-group"
    },
    [48] {
          "id" => 4053,
        "name" => "Corbis Images",
         "url" => "https://www.igdb.com/companies/corbis-images"
    },
    [49] {
          "id" => 4054,
        "name" => "Shooting Star",
         "url" => "https://www.igdb.com/companies/shooting-star"
    }
    [ 0] {
          "id" => 4055,
        "name" => "Synapse Films",
         "url" => "https://www.igdb.com/companies/synapse-films"
    },
    [ 1] {
          "id" => 4056,
        "name" => "Sessing Music Services",
         "url" => "https://www.igdb.com/companies/sessing-music-services"
    },
    [ 2] {
          "id" => 4057,
        "name" => "PTD Guideline Compliance",
         "url" => "https://www.igdb.com/companies/ptd-guideline-compliance"
    },
    [ 3] {
          "id" => 4058,
        "name" => "Mario Kart Band",
         "url" => "https://www.igdb.com/companies/mario-kart-band"
    },
    [ 4] {
          "id" => 4059,
        "name" => "Necrophone Games",
         "url" => "https://www.igdb.com/companies/necrophone-games"
    },
    [ 5] {
          "id" => 4060,
        "name" => "Adult Swim",
         "url" => "https://www.igdb.com/companies/adult-swim"
    },
    [ 6] {
          "id" => 4061,
        "name" => "Bojan Brbora",
         "url" => "https://www.igdb.com/companies/bojan-brbora"
    },
    [ 7] {
          "id" => 4062,
        "name" => "4PM GAME",
         "url" => "https://www.igdb.com/companies/4pm-game"
    },
    [ 8] {
          "id" => 4063,
        "name" => "Limasse Five",
         "url" => "https://www.igdb.com/companies/limasse-five"
    },
    [ 9] {
          "id" => 4064,
        "name" => "Superflat Games",
         "url" => "https://www.igdb.com/companies/superflat-games"
    },
    [10] {
          "id" => 4065,
        "name" => "Curve Studios",
         "url" => "https://www.igdb.com/companies/curve-studios"
    },
    [11] {
          "id" => 4066,
        "name" => "Equilibrium",
         "url" => "https://www.igdb.com/companies/equilibrium"
    },
    [12] {
          "id" => 4067,
        "name" => "WJS Design",
         "url" => "https://www.igdb.com/companies/wjs-design"
    },
    [13] {
          "id" => 4068,
        "name" => "Infinitap Games",
         "url" => "https://www.igdb.com/companies/infinitap-games"
    },
    [14] {
          "id" => 4069,
        "name" => "Derek Yu",
         "url" => "https://www.igdb.com/companies/derek-yu"
    },
    [15] {
          "id" => 4070,
        "name" => "Eyebrow Interactive",
         "url" => "https://www.igdb.com/companies/eyebrow-interactive"
    },
    [16] {
          "id" => 4071,
        "name" => "Bruno R. Marcos",
         "url" => "https://www.igdb.com/companies/bruno-r-marcos"
    },
    [17] {
          "id" => 4072,
        "name" => "LSP",
         "url" => "https://www.igdb.com/companies/lsp"
    },
    [18] {
          "id" => 4073,
        "name" => "Similis",
         "url" => "https://www.igdb.com/companies/similis"
    },
    [19] {
          "id" => 4074,
        "name" => "TNX Music Recordings",
         "url" => "https://www.igdb.com/companies/tnx-music-recordings"
    },
    [20] {
          "id" => 4075,
        "name" => "Software Projects",
         "url" => "https://www.igdb.com/companies/software-projects"
    },
    [21] {
          "id" => 4076,
        "name" => "Tynesoft",
         "url" => "https://www.igdb.com/companies/tynesoft"
    },
    [22] {
          "id" => 4077,
        "name" => "Software Project",
         "url" => "https://www.igdb.com/companies/software-project"
    },
    [23] {
          "id" => 4078,
        "name" => "Experis",
         "url" => "https://www.igdb.com/companies/experis"
    },
    [24] {
          "id" => 4079,
        "name" => "Bristol/London Music Production Unit",
         "url" => "https://www.igdb.com/companies/bristol-slash-london-music-production-unit"
    },
    [25] {
          "id" => 4080,
        "name" => "Los Angles/ Seattle/ Tokyo Music Production Unit",
         "url" => "https://www.igdb.com/companies/los-angles-slash-seattle-slash-tokyo-music-production-unit"
    },
    [26] {
          "id" => 4081,
        "name" => "Cynergy Systems Inc",
         "url" => "https://www.igdb.com/companies/cynergy-systems-inc"
    },
    [27] {
          "id" => 4082,
        "name" => "The Sequence Group",
         "url" => "https://www.igdb.com/companies/the-sequence-group"
    },
    [28] {
          "id" => 4083,
        "name" => "PlayStation C.A.M.P.",
         "url" => "https://www.igdb.com/companies/playstation-camp"
    },
    [29] {
          "id" => 4084,
        "name" => "Zener Works Inc.",
         "url" => "https://www.igdb.com/companies/zener-works-inc"
    },
    [30] {
          "id" => 4085,
        "name" => "Bacteria Inc.",
         "url" => "https://www.igdb.com/companies/bacteria-inc"
    },
    [31] {
          "id" => 4086,
        "name" => "Otogi LLC",
         "url" => "https://www.igdb.com/companies/otogi-llc"
    },
    [32] {
          "id" => 4087,
        "name" => "Swing",
         "url" => "https://www.igdb.com/companies/swing"
    },
    [33] {
          "id" => 4088,
        "name" => "Masatsugu Shinozaki Group",
         "url" => "https://www.igdb.com/companies/masatsugu-shinozaki-group"
    },
    [34] {
          "id" => 4089,
        "name" => "Disastercake",
         "url" => "https://www.igdb.com/companies/disastercake"
    },
    [35] {
          "id" => 4090,
        "name" => "Havas Interactive",
         "url" => "https://www.igdb.com/companies/havas-interactive"
    },
    [36] {
          "id" => 4091,
        "name" => "PQube",
         "url" => "https://www.igdb.com/companies/pqube--1"
    },
    [37] {
          "id" => 4093,
        "name" => "H2 Interactive",
         "url" => "https://www.igdb.com/companies/h2-interactive"
    },
    [38] {
          "id" => 4095,
        "name" => "Kouyousha",
         "url" => "https://www.igdb.com/companies/kouyousha"
    },
    [39] {
          "id" => 4098,
        "name" => "Bootleg",
         "url" => "https://www.igdb.com/companies/bootleg"
    },
    [40] {
          "id" => 4099,
        "name" => "Open Corp",
         "url" => "https://www.igdb.com/companies/open-corp"
    },
    [41] {
          "id" => 4100,
        "name" => "Aventurine SA",
         "url" => "https://www.igdb.com/companies/aventurine-sa"
    },
    [42] {
          "id" => 4101,
        "name" => "Aventurine",
         "url" => "https://www.igdb.com/companies/aventurine"
    },
    [43] {
          "id" => 4102,
        "name" => "Aventurine SA",
         "url" => "https://www.igdb.com/companies/aventurine-sa--1"
    },
    [44] {
          "id" => 4103,
        "name" => "SRD Co., Ltd.",
         "url" => "https://www.igdb.com/companies/srd-co-dot-ltd"
    },
    [45] {
          "id" => 4104,
        "name" => "Mox Co., Ltd.",
         "url" => "https://www.igdb.com/companies/mox-co-dot-ltd"
    },
    [46] {
          "id" => 4105,
        "name" => "Kenproduction",
         "url" => "https://www.igdb.com/companies/kenproduction"
    },
    [47] {
          "id" => 4106,
        "name" => "Light Weight",
         "url" => "https://www.igdb.com/companies/light-weight"
    },
    [48] {
          "id" => 4107,
        "name" => "SCE Australia",
         "url" => "https://www.igdb.com/companies/sce-australia"
    },
    [49] {
          "id" => 4108,
        "name" => "Wild Shadow Studios",
         "url" => "https://www.igdb.com/companies/wild-shadow-studios"
    }
    [ 0] {
          "id" => 4109,
        "name" => "Kabam",
         "url" => "https://www.igdb.com/companies/kabam"
    },
    [ 1] {
          "id" => 4110,
        "name" => "Micronics",
         "url" => "https://www.igdb.com/companies/micronics"
    },
    [ 2] {
          "id" => 4111,
        "name" => "Midway Studios San Diego",
         "url" => "https://www.igdb.com/companies/midway-studios-san-diego"
    },
    [ 3] {
          "id" => 4112,
        "name" => "Soft Bank",
         "url" => "https://www.igdb.com/companies/soft-bank"
    },
    [ 4] {
          "id" => 4113,
        "name" => "Art Data Interactive",
         "url" => "https://www.igdb.com/companies/art-data-interactive"
    },
    [ 5] {
          "id" => 4114,
        "name" => "Bashou House",
         "url" => "https://www.igdb.com/companies/bashou-house"
    },
    [ 6] {
          "id" => 4115,
        "name" => "Lion Entertainment",
         "url" => "https://www.igdb.com/companies/lion-entertainment"
    },
    [ 7] {
          "id" => 4116,
        "name" => "Digital Café",
         "url" => "https://www.igdb.com/companies/digital-cafe"
    },
    [ 8] {
          "id" => 4117,
        "name" => "Ralston-Purina",
         "url" => "https://www.igdb.com/companies/ralston-purina"
    },
    [ 9] {
          "id" => 4118,
        "name" => "SoMa Play",
         "url" => "https://www.igdb.com/companies/soma-play"
    },
    [10] {
          "id" => 4120,
        "name" => "AcademySoft",
         "url" => "https://www.igdb.com/companies/academysoft"
    },
    [11] {
          "id" => 4121,
        "name" => "Tandy",
         "url" => "https://www.igdb.com/companies/tandy"
    },
    [12] {
          "id" => 4122,
        "name" => "DR Korea",
         "url" => "https://www.igdb.com/companies/dr-korea"
    },
    [13] {
          "id" => 4123,
        "name" => "Alexey Pajitnov",
         "url" => "https://www.igdb.com/companies/alexey-pajitnov"
    },
    [14] {
          "id" => 4124,
        "name" => "Vadim Gerasimov",
         "url" => "https://www.igdb.com/companies/vadim-gerasimov"
    },
    [15] {
          "id" => 4125,
        "name" => "Elorg",
         "url" => "https://www.igdb.com/companies/elorg"
    },
    [16] {
          "id" => 4126,
        "name" => "Andromeda Software",
         "url" => "https://www.igdb.com/companies/andromeda-software"
    },
    [17] {
          "id" => 4127,
        "name" => "Sphere",
         "url" => "https://www.igdb.com/companies/sphere"
    },
    [18] {
          "id" => 4128,
        "name" => "ZTC Systems",
         "url" => "https://www.igdb.com/companies/ztc-systems"
    },
    [19] {
          "id" => 4129,
        "name" => "Project Just",
         "url" => "https://www.igdb.com/companies/project-just"
    },
    [20] {
          "id" => 4130,
        "name" => "The Developers of Incredible Power",
         "url" => "https://www.igdb.com/companies/the-developers-of-incredible-power"
    },
    [21] {
          "id" => 4131,
        "name" => "Mobila Interactive",
         "url" => "https://www.igdb.com/companies/mobila-interactive"
    },
    [22] {
          "id" => 4132,
        "name" => "icculus.org",
         "url" => "https://www.igdb.com/companies/icculus-dot-org"
    },
    [23] {
          "id" => 4133,
        "name" => "11 bit studios",
         "url" => "https://www.igdb.com/companies/11-bit-studios"
    },
    [24] {
          "id" => 4134,
        "name" => "Upper One Games",
         "url" => "https://www.igdb.com/companies/upper-one-games"
    },
    [25] {
          "id" => 4135,
        "name" => "E-Line Media",
         "url" => "https://www.igdb.com/companies/e-line-media"
    },
    [26] {
          "id" => 4136,
        "name" => "River Cresco",
         "url" => "https://www.igdb.com/companies/river-cresco"
    },
    [27] {
          "id" => 4137,
        "name" => "Rebecca Heineman",
         "url" => "https://www.igdb.com/companies/rebecca-heineman"
    },
    [28] {
          "id" => 4138,
        "name" => "Main Street Publishing",
         "url" => "https://www.igdb.com/companies/main-street-publishing"
    },
    [29] {
          "id" => 4139,
        "name" => "John Sands Electronics",
         "url" => "https://www.igdb.com/companies/john-sands-electronics"
    },
    [30] {
          "id" => 4140,
        "name" => "Logitec",
         "url" => "https://www.igdb.com/companies/logitec"
    },
    [31] {
          "id" => 4141,
        "name" => "UIEvolution",
         "url" => "https://www.igdb.com/companies/uievolution"
    },
    [32] {
          "id" => 4142,
        "name" => "2 Player Productions",
         "url" => "https://www.igdb.com/companies/2-player-productions"
    },
    [33] {
          "id" => 4143,
        "name" => "Dracogen Inc.",
         "url" => "https://www.igdb.com/companies/dracogen-inc"
    },
    [34] {
          "id" => 4144,
        "name" => "Instant Kingdom",
         "url" => "https://www.igdb.com/companies/instant-kingdom"
    },
    [35] {
          "id" => 4145,
        "name" => "Basilisk Games",
         "url" => "https://www.igdb.com/companies/basilisk-games"
    },
    [36] {
          "id" => 4146,
        "name" => "Hollywood Studio Symphony",
         "url" => "https://www.igdb.com/companies/hollywood-studio-symphony"
    },
    [37] {
          "id" => 4147,
        "name" => "Lunarch Studios",
         "url" => "https://www.igdb.com/companies/lunarch-studios"
    },
    [38] {
          "id" => 4148,
        "name" => "EA Romania",
         "url" => "https://www.igdb.com/companies/ea-romania"
    },
    [39] {
          "id" => 4149,
        "name" => "Chrom Studio",
         "url" => "https://www.igdb.com/companies/chrom-studio"
    },
    [40] {
          "id" => 4150,
        "name" => "OF3D",
         "url" => "https://www.igdb.com/companies/of3d"
    },
    [41] {
          "id" => 4151,
        "name" => "Speradoft Inc.",
         "url" => "https://www.igdb.com/companies/speradoft-inc"
    },
    [42] {
          "id" => 4152,
        "name" => "Typodermic Inc.",
         "url" => "https://www.igdb.com/companies/typodermic-inc"
    },
    [43] {
          "id" => 4153,
        "name" => "Georgrify",
         "url" => "https://www.igdb.com/companies/georgrify"
    },
    [44] {
          "id" => 4154,
        "name" => "Geomerics Ltc.",
         "url" => "https://www.igdb.com/companies/geomerics-ltc"
    },
    [45] {
          "id" => 4155,
        "name" => "Middlewar Licensesn in Salesforce, FYI",
         "url" => "https://www.igdb.com/companies/middlewar-licensesn-in-salesforce-fyi"
    },
    [46] {
          "id" => 4156,
        "name" => "OC3",
         "url" => "https://www.igdb.com/companies/oc3"
    },
    [47] {
          "id" => 4157,
        "name" => "Failbetter Games Ltd.",
         "url" => "https://www.igdb.com/companies/failbetter-games-ltd"
    },
    [48] {
          "id" => 4158,
        "name" => "Gskinner.com",
         "url" => "https://www.igdb.com/companies/gskinner-dot-com"
    },
    [49] {
          "id" => 4159,
        "name" => "Lone Shark Games",
         "url" => "https://www.igdb.com/companies/lone-shark-games"
    }
    [ 0] {
          "id" => 4160,
        "name" => "Metaverse Modsquad",
         "url" => "https://www.igdb.com/companies/metaverse-modsquad"
    },
    [ 1] {
          "id" => 4161,
        "name" => "Pulp Studios Inc.",
         "url" => "https://www.igdb.com/companies/pulp-studios-inc"
    },
    [ 2] {
          "id" => 4162,
        "name" => "RED The Agency",
         "url" => "https://www.igdb.com/companies/red-the-agency"
    },
    [ 3] {
          "id" => 4163,
        "name" => "Seven Tales Inc.",
         "url" => "https://www.igdb.com/companies/seven-tales-inc"
    },
    [ 4] {
          "id" => 4164,
        "name" => "Sperasoft Inc.",
         "url" => "https://www.igdb.com/companies/sperasoft-inc"
    },
    [ 5] {
          "id" => 4165,
        "name" => "Work at Play Media Labs",
         "url" => "https://www.igdb.com/companies/work-at-play-media-labs"
    },
    [ 6] {
          "id" => 4166,
        "name" => "GameSim Technologies",
         "url" => "https://www.igdb.com/companies/gamesim-technologies"
    },
    [ 7] {
          "id" => 4167,
        "name" => "Johnny Blerot Sound",
         "url" => "https://www.igdb.com/companies/johnny-blerot-sound"
    },
    [ 8] {
          "id" => 4168,
        "name" => "Studio Center Total Productions",
         "url" => "https://www.igdb.com/companies/studio-center-total-productions"
    },
    [ 9] {
          "id" => 4169,
        "name" => "Rynn & Dante",
         "url" => "https://www.igdb.com/companies/rynn-and-dante"
    },
    [10] {
          "id" => 4170,
        "name" => "FilmOasis Inc.",
         "url" => "https://www.igdb.com/companies/filmoasis-inc"
    },
    [11] {
          "id" => 4171,
        "name" => "Omni Interactive Audio",
         "url" => "https://www.igdb.com/companies/omni-interactive-audio"
    },
    [12] {
          "id" => 4172,
        "name" => "ReelFX Creative Studios",
         "url" => "https://www.igdb.com/companies/reelfx-creative-studios"
    },
    [13] {
          "id" => 7243,
        "name" => "Tumblehead-Animation Studios",
         "url" => "https://www.igdb.com/companies/tumblehead-animation-studios"
    },
    [14] {
          "id" => 7244,
        "name" => "DQ Entertainment International",
         "url" => "https://www.igdb.com/companies/dq-entertainment-international"
    },
    [15] {
          "id" => 7245,
        "name" => "Bay Area Sound",
         "url" => "https://www.igdb.com/companies/bay-area-sound"
    },
    [16] {
          "id" => 7246,
        "name" => "Adobe Systems",
         "url" => "https://www.igdb.com/companies/adobe-systems"
    },
    [17] {
          "id" => 7247,
        "name" => "Macromedia",
         "url" => "https://www.igdb.com/companies/macromedia"
    },
    [18] {
          "id" => 7248,
        "name" => "Red House Studios",
         "url" => "https://www.igdb.com/companies/red-house-studios"
    },
    [19] {
          "id" => 7249,
        "name" => "Electric Image",
         "url" => "https://www.igdb.com/companies/electric-image"
    },
    [20] {
          "id" => 7250,
        "name" => "Naiad Entertainment",
         "url" => "https://www.igdb.com/companies/naiad-entertainment"
    },
    [21] {
          "id" => 7251,
        "name" => "Dekovir Entertainment",
         "url" => "https://www.igdb.com/companies/dekovir-entertainment"
    },
    [22] {
          "id" => 7252,
        "name" => "Black Maple Games",
         "url" => "https://www.igdb.com/companies/black-maple-games"
    },
    [23] {
          "id" => 7254,
        "name" => "Impulze",
         "url" => "https://www.igdb.com/companies/impulze"
    },
    [24] {
          "id" => 7255,
        "name" => "Golden Goblins",
         "url" => "https://www.igdb.com/companies/golden-goblins"
    },
    [25] {
          "id" => 7256,
        "name" => "Valhalla Cats",
         "url" => "https://www.igdb.com/companies/valhalla-cats"
    },
    [26] {
          "id" => 7258,
        "name" => "Electrocoin",
         "url" => "https://www.igdb.com/companies/electrocoin"
    },
    [27] {
          "id" => 7259,
        "name" => "Magic Pants",
         "url" => "https://www.igdb.com/companies/magic-pants"
    },
    [28] {
          "id" => 7261,
        "name" => "Guerrilla Cambridge",
         "url" => "https://www.igdb.com/companies/guerrilla-cambridge"
    },
    [29] {
          "id" => 7262,
        "name" => "Sterling Silver Software",
         "url" => "https://www.igdb.com/companies/sterling-silver-software"
    },
    [30] {
          "id" => 7263,
        "name" => "Team Cherry",
         "url" => "https://www.igdb.com/companies/team-cherry"
    },
    [31] {
          "id" => 7264,
        "name" => "Ascon",
         "url" => "https://www.igdb.com/companies/ascon"
    },
    [32] {
          "id" => 7265,
        "name" => "Defcom",
         "url" => "https://www.igdb.com/companies/defcom"
    },
    [33] {
          "id" => 7266,
        "name" => "EAS Procovision",
         "url" => "https://www.igdb.com/companies/eas-procovision"
    },
    [34] {
          "id" => 7267,
        "name" => "Acid Software",
         "url" => "https://www.igdb.com/companies/acid-software"
    },
    [35] {
          "id" => 7268,
        "name" => "Global Software",
         "url" => "https://www.igdb.com/companies/global-software"
    },
    [36] {
          "id" => 7269,
        "name" => "Intelek",
         "url" => "https://www.igdb.com/companies/intelek"
    },
    [37] {
          "id" => 7270,
        "name" => "BOMS Computer Games",
         "url" => "https://www.igdb.com/companies/boms-computer-games"
    },
    [38] {
          "id" => 7271,
        "name" => "Leisure Genius",
         "url" => "https://www.igdb.com/companies/leisure-genius"
    },
    [39] {
          "id" => 7272,
        "name" => "Screen 7 Entertainment - duplicate",
         "url" => "https://www.igdb.com/companies/screen-7-entertainment-duplicate"
    },
    [40] {
          "id" => 7273,
        "name" => "Phoenix Game Studio",
         "url" => "https://www.igdb.com/companies/phoenix-game-studio"
    },
    [41] {
          "id" => 7274,
        "name" => "Supervision",
         "url" => "https://www.igdb.com/companies/supervision"
    },
    [42] {
          "id" => 7275,
        "name" => "The Hidden",
         "url" => "https://www.igdb.com/companies/the-hidden"
    },
    [43] {
          "id" => 7276,
        "name" => "The Deep End Games",
         "url" => "https://www.igdb.com/companies/the-deep-end-games"
    },
    [44] {
          "id" => 7278,
        "name" => "Alan Hazelden",
         "url" => "https://www.igdb.com/companies/alan-hazelden"
    },
    [45] {
          "id" => 7279,
        "name" => "Benjamin Davis",
         "url" => "https://www.igdb.com/companies/benjamin-davis"
    },
    [46] {
          "id" => 7280,
        "name" => "Tic Toc Games",
         "url" => "https://www.igdb.com/companies/tic-toc-games"
    },
    [47] {
          "id" => 7281,
        "name" => "Red Earth Recording Studios",
         "url" => "https://www.igdb.com/companies/red-earth-recording-studios"
    },
    [48] {
          "id" => 7282,
        "name" => "Associated Production Music",
         "url" => "https://www.igdb.com/companies/associated-production-music"
    },
    [49] {
          "id" => 7283,
        "name" => "Centennia",
         "url" => "https://www.igdb.com/companies/centennia"
    }
    [ 0] {
          "id" => 7284,
        "name" => "Animal Arts",
         "url" => "https://www.igdb.com/companies/animal-arts"
    },
    [ 1] {
          "id" => 7285,
        "name" => "Rosalyn Catering",
         "url" => "https://www.igdb.com/companies/rosalyn-catering"
    },
    [ 2] {
          "id" => 7286,
        "name" => "Cinerents West",
         "url" => "https://www.igdb.com/companies/cinerents-west"
    },
    [ 3] {
          "id" => 7287,
        "name" => "Steadi Systems",
         "url" => "https://www.igdb.com/companies/steadi-systems"
    },
    [ 4] {
          "id" => 7288,
        "name" => "Monaco Labs",
         "url" => "https://www.igdb.com/companies/monaco-labs"
    },
    [ 5] {
          "id" => 7289,
        "name" => "Varitel San Francisco",
         "url" => "https://www.igdb.com/companies/varitel-san-francisco"
    },
    [ 6] {
          "id" => 7290,
        "name" => "On Time/Off Line",
         "url" => "https://www.igdb.com/companies/on-time-slash-off-line"
    },
    [ 7] {
          "id" => 7291,
        "name" => "Litigation",
         "url" => "https://www.igdb.com/companies/litigation"
    },
    [ 8] {
          "id" => 7292,
        "name" => "Technologies",
         "url" => "https://www.igdb.com/companies/technologies"
    },
    [ 9] {
          "id" => 7293,
        "name" => "American Zoetrope",
         "url" => "https://www.igdb.com/companies/american-zoetrope"
    },
    [10] {
          "id" => 7294,
        "name" => "Poolside Studios",
         "url" => "https://www.igdb.com/companies/poolside-studios"
    },
    [11] {
          "id" => 7295,
        "name" => "Outpost San Francisco",
         "url" => "https://www.igdb.com/companies/outpost-san-francisco"
    },
    [12] {
          "id" => 7296,
        "name" => "Forte Music Studios",
         "url" => "https://www.igdb.com/companies/forte-music-studios"
    },
    [13] {
          "id" => 7297,
        "name" => "MuHa Games",
         "url" => "https://www.igdb.com/companies/muha-games"
    },
    [14] {
          "id" => 7298,
        "name" => "Freehold Games",
         "url" => "https://www.igdb.com/companies/freehold-games"
    },
    [15] {
          "id" => 7300,
        "name" => "Pinkapp games",
         "url" => "https://www.igdb.com/companies/pinkapp-games"
    },
    [16] {
          "id" => 7301,
        "name" => "Arsys Software",
         "url" => "https://www.igdb.com/companies/arsys-software"
    },
    [17] {
          "id" => 7302,
        "name" => "Michaelsoft Inc.",
         "url" => "https://www.igdb.com/companies/michaelsoft-inc"
    },
    [18] {
          "id" => 7303,
        "name" => "Hue Forest Entertainmen",
         "url" => "https://www.igdb.com/companies/hue-forest-entertainmen"
    },
    [19] {
          "id" => 7304,
        "name" => "Sakuratei Motion Capture",
         "url" => "https://www.igdb.com/companies/sakuratei-motion-capture"
    },
    [20] {
          "id" => 7305,
        "name" => "Mix Core Inc.",
         "url" => "https://www.igdb.com/companies/mix-core-inc"
    },
    [21] {
          "id" => 7306,
        "name" => "Nova",
         "url" => "https://www.igdb.com/companies/nova"
    },
    [22] {
          "id" => 7307,
        "name" => "Digifusion Inc.",
         "url" => "https://www.igdb.com/companies/digifusion-inc"
    },
    [23] {
          "id" => 7308,
        "name" => "Tokyo Itoi Shigesato Office",
         "url" => "https://www.igdb.com/companies/tokyo-itoi-shigesato-office"
    },
    [24] {
          "id" => 7309,
        "name" => "Glass Eye Pix",
         "url" => "https://www.igdb.com/companies/glass-eye-pix"
    },
    [25] {
          "id" => 7310,
        "name" => "EPK",
         "url" => "https://www.igdb.com/companies/epk"
    },
    [26] {
          "id" => 7311,
        "name" => "Robotic Dream Studios",
         "url" => "https://www.igdb.com/companies/robotic-dream-studios"
    },
    [27] {
          "id" => 7312,
        "name" => "Industrial Arts",
         "url" => "https://www.igdb.com/companies/industrial-arts"
    },
    [28] {
          "id" => 7313,
        "name" => "FLY Films",
         "url" => "https://www.igdb.com/companies/fly-films"
    },
    [29] {
          "id" => 7314,
        "name" => "Kalloc Studios",
         "url" => "https://www.igdb.com/companies/kalloc-studios"
    },
    [30] {
          "id" => 7315,
        "name" => "The Monk Studio Company",
         "url" => "https://www.igdb.com/companies/the-monk-studio-company"
    },
    [31] {
          "id" => 7316,
        "name" => "Nuke Digital & Technology",
         "url" => "https://www.igdb.com/companies/nuke-digital-and-technology"
    },
    [32] {
          "id" => 7317,
        "name" => "Uni-Digital",
         "url" => "https://www.igdb.com/companies/uni-digital"
    },
    [33] {
          "id" => 7318,
        "name" => "Virus Studios",
         "url" => "https://www.igdb.com/companies/virus-studios"
    },
    [34] {
          "id" => 7319,
        "name" => "Star Maid Games",
         "url" => "https://www.igdb.com/companies/star-maid-games"
    },
    [35] {
          "id" => 7320,
        "name" => "Super Awesome Hyper Dimensional Mega Team",
         "url" => "https://www.igdb.com/companies/super-awesome-hyper-dimensional-mega-team"
    },
    [36] {
          "id" => 7321,
        "name" => "Big Wheels Studio",
         "url" => "https://www.igdb.com/companies/big-wheels-studio"
    },
    [37] {
          "id" => 7322,
        "name" => "The Blade Runner Partnership",
         "url" => "https://www.igdb.com/companies/the-blade-runner-partnership"
    },
    [38] {
          "id" => 7323,
        "name" => "Icon Art",
         "url" => "https://www.igdb.com/companies/icon-art"
    },
    [39] {
          "id" => 7324,
        "name" => "Wavegroup Sound",
         "url" => "https://www.igdb.com/companies/wavegroup-sound"
    },
    [40] {
          "id" => 7325,
        "name" => "Atrophy Studios",
         "url" => "https://www.igdb.com/companies/atrophy-studios"
    },
    [41] {
          "id" => 7326,
        "name" => "Petrified Productions",
         "url" => "https://www.igdb.com/companies/petrified-productions"
    },
    [42] {
          "id" => 7327,
        "name" => "Perceptive Sound Design",
         "url" => "https://www.igdb.com/companies/perceptive-sound-design"
    },
    [43] {
          "id" => 7328,
        "name" => "Advantage Audio",
         "url" => "https://www.igdb.com/companies/advantage-audio"
    },
    [44] {
          "id" => 7329,
        "name" => "BLT & Associates",
         "url" => "https://www.igdb.com/companies/blt-and-associates"
    },
    [45] {
          "id" => 7330,
        "name" => "DivX",
         "url" => "https://www.igdb.com/companies/divx"
    },
    [46] {
          "id" => 7331,
        "name" => "Filmakademie Baden-Württemberg",
         "url" => "https://www.igdb.com/companies/filmakademie-baden-wurttemberg"
    },
    [47] {
          "id" => 7332,
        "name" => "Stöckel GmbH",
         "url" => "https://www.igdb.com/companies/stockel-gmbh"
    },
    [48] {
          "id" => 7333,
        "name" => "RC Productions",
         "url" => "https://www.igdb.com/companies/rc-productions"
    },
    [49] {
          "id" => 7334,
        "name" => "Attaction",
         "url" => "https://www.igdb.com/companies/attaction"
    }
    [ 0] {
          "id" => 7335,
        "name" => "BVT Games Fund III Dynamic GmbH & Co. KG",
         "url" => "https://www.igdb.com/companies/bvt-games-fund-iii-dynamic-gmbh-and-co-kg"
    },
    [ 1] {
          "id" => 7336,
        "name" => "Trinigy GmbH",
         "url" => "https://www.igdb.com/companies/trinigy-gmbh"
    },
    [ 2] {
          "id" => 7337,
        "name" => "KARAKTER",
         "url" => "https://www.igdb.com/companies/karakter"
    },
    [ 3] {
          "id" => 7338,
        "name" => "ELIGAME Studio",
         "url" => "https://www.igdb.com/companies/eligame-studio"
    },
    [ 4] {
          "id" => 7339,
        "name" => "Luedke Productions",
         "url" => "https://www.igdb.com/companies/luedke-productions"
    },
    [ 5] {
          "id" => 7340,
        "name" => "Try2 Games",
         "url" => "https://www.igdb.com/companies/try2-games"
    },
    [ 6] {
          "id" => 7341,
        "name" => "Virgin Lands",
         "url" => "https://www.igdb.com/companies/virgin-lands"
    },
    [ 7] {
          "id" => 7342,
        "name" => "Ulysses Games",
         "url" => "https://www.igdb.com/companies/ulysses-games"
    },
    [ 8] {
          "id" => 7343,
        "name" => "iBeta",
         "url" => "https://www.igdb.com/companies/ibeta"
    },
    [ 9] {
          "id" => 7344,
        "name" => "Mosaik Studios",
         "url" => "https://www.igdb.com/companies/mosaik-studios"
    },
    [10] {
          "id" => 7345,
        "name" => "DLM Consulting",
         "url" => "https://www.igdb.com/companies/dlm-consulting"
    },
    [11] {
          "id" => 7346,
        "name" => "Staatskapelle Halle",
         "url" => "https://www.igdb.com/companies/staatskapelle-halle"
    },
    [12] {
          "id" => 7347,
        "name" => "Genuin Philharmonic Choir",
         "url" => "https://www.igdb.com/companies/genuin-philharmonic-choir"
    },
    [13] {
          "id" => 7348,
        "name" => "Team57",
         "url" => "https://www.igdb.com/companies/team57"
    },
    [14] {
          "id" => 7349,
        "name" => "304000 Medienkreatioen",
         "url" => "https://www.igdb.com/companies/304000-medienkreatioen"
    },
    [15] {
          "id" => 7350,
        "name" => "Churoku Service",
         "url" => "https://www.igdb.com/companies/churoku-service"
    },
    [16] {
          "id" => 7351,
        "name" => "Art Quest",
         "url" => "https://www.igdb.com/companies/art-quest"
    },
    [17] {
          "id" => 7352,
        "name" => "Robot",
         "url" => "https://www.igdb.com/companies/robot"
    },
    [18] {
          "id" => 7353,
        "name" => "Wild Brain",
         "url" => "https://www.igdb.com/companies/wild-brain"
    },
    [19] {
          "id" => 7354,
        "name" => "Image AspectZ",
         "url" => "https://www.igdb.com/companies/image-aspectz"
    },
    {
          "id" => 7355,
        "name" => "Arquebuse",
         "url" => "https://www.igdb.com/companies/arquebuse"
    },
    {
          "id" => 7356,
        "name" => "TEAM Entertainment",
         "url" => "https://www.igdb.com/companies/team-entertainment"
    },
    {
          "id" => 7357,
        "name" => "Sound Inn",
         "url" => "https://www.igdb.com/companies/sound-inn"
    },
    {
          "id" => 7358,
        "name" => "Warner Music Recording Studio",
         "url" => "https://www.igdb.com/companies/warner-music-recording-studio"
    },
    {
          "id" => 7359,
        "name" => "Unicon Products Inc.",
         "url" => "https://www.igdb.com/companies/unicon-products-inc"
    },
    {
          "id" => 7360,
        "name" => "Sawano",
         "url" => "https://www.igdb.com/companies/sawano"
    },
    {
          "id" => 7361,
        "name" => "Bean Pod Corp.",
         "url" => "https://www.igdb.com/companies/bean-pod-corp"
    },
    {
          "id" => 7362,
        "name" => "Alpha Stunts",
         "url" => "https://www.igdb.com/companies/alpha-stunts"
    },
    {
          "id" => 7363,
        "name" => "Big Fighter Project",
         "url" => "https://www.igdb.com/companies/big-fighter-project"
    },
    {
          "id" => 7364,
        "name" => "Syncretic Media",
         "url" => "https://www.igdb.com/companies/syncretic-media"
    },
    {
          "id" => 7365,
        "name" => "TSP Inc.",
         "url" => "https://www.igdb.com/companies/tsp-inc"
    },
    {
          "id" => 7366,
        "name" => "Zepher Inc.",
         "url" => "https://www.igdb.com/companies/zepher-inc"
    },
    {
          "id" => 7367,
        "name" => "Garyu Corporation",
         "url" => "https://www.igdb.com/companies/garyu-corporation"
    },
    {
          "id" => 5223,
        "name" => "Kirin Entertainment",
         "url" => "https://www.igdb.com/companies/kirin-entertainment"
    },
    {
          "id" => 5224,
        "name" => "Deckpoint Studio",
         "url" => "https://www.igdb.com/companies/deckpoint-studio"
    },
    {
          "id" => 5225,
        "name" => "Pyro Mobile",
         "url" => "https://www.igdb.com/companies/pyro-mobile"
    },
    {
          "id" => 5226,
        "name" => "ZeptoLab",
         "url" => "https://www.igdb.com/companies/zeptolab"
    },
    {
          "id" => 5227,
        "name" => "Brain Bug",
         "url" => "https://www.igdb.com/companies/brain-bug"
    },
    {
          "id" => 5228,
        "name" => "Humble Hearts",
         "url" => "https://www.igdb.com/companies/humble-hearts"
    },
    {
          "id" => 5230,
        "name" => "Marc Graye Voice Over Recording Studios",
         "url" => "https://www.igdb.com/companies/marc-graye-voice-over-recording-studios"
    },
    {
          "id" => 5231,
        "name" => "Morris Creative Services",
         "url" => "https://www.igdb.com/companies/morris-creative-services"
    },
    {
          "id" => 5232,
        "name" => "North Hollywood Sound",
         "url" => "https://www.igdb.com/companies/north-hollywood-sound"
    },
    {
          "id" => 5233,
        "name" => "NYAV Post",
         "url" => "https://www.igdb.com/companies/nyav-post"
    },
    {
          "id" => 5234,
        "name" => "Presence Studios",
         "url" => "https://www.igdb.com/companies/presence-studios"
    },
    {
          "id" => 5235,
        "name" => "The Block House",
         "url" => "https://www.igdb.com/companies/the-block-house"
    },
    {
          "id" => 5236,
        "name" => "The Voice Experts",
         "url" => "https://www.igdb.com/companies/the-voice-experts"
    },
    {
          "id" => 5237,
        "name" => "Synthesis Milan",
         "url" => "https://www.igdb.com/companies/synthesis-milan"
    },
    {
          "id" => 5238,
        "name" => "Periscope Studio",
         "url" => "https://www.igdb.com/companies/periscope-studio"
    },
    {
          "id" => 5239,
        "name" => "Synthesis Madrid",
         "url" => "https://www.igdb.com/companies/synthesis-madrid"
    },
    {
          "id" => 5240,
        "name" => "Krysalide",
         "url" => "https://www.igdb.com/companies/krysalide"
    }

  ])
