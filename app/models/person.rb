class Person < ApplicationRecord
  has_many :movie_casts, dependent: :destroy
  has_many :movies_as_cast, through: :movie_casts, class_name: "Movie", source: :movie
  has_many :movie_crews, dependent: :destroy
  has_many :movies_as_crew, through: :movie_crews, class_name: "Movie", source: :movie

  has_many :tv_creators, dependent: :destroy
  has_many :tv_shows, through: :tv_creators

  has_many :tv_casts, dependent: :destroy
  has_many :tv_seasons, through: :tv_casts

  has_many :tv_guest_stars, dependent: :destroy
  has_many :tv_episodes, through: :tv_guest_stars

  validates :name, presence: true
  validates :tmdb_people_id, presence: true

  def self.get_person_details(tmdb_people_id)
    response = HTTParty.get("https://api.themoviedb.org/3/person/#{tmdb_people_id}", query:
    {
      api_key: ENV['TMDB_API_KEY'],
      language: "en-US"
      })
    person_details = JSON.parse(response.body)

    name = person_details["name"]
    tmdb_people_id = person_details["id"]
    biography = person_details["biography"]
    birthday = person_details["birthday"]
    deathday = person_details["deathday"]
    place_of_birth = person_details["place_of_birth"]
    gender = person_details["gender"]
    if person_details["profile_path"].nil?
      profile_path_url = person_details["profile_path"]
    else
      profile_path_url = "http://image.tmdb.org/t/p/w185/#{person_details["profile_path"]}"
    end

    person_params = {name: name, tmdb_people_id: tmdb_people_id, biography: biography, birthday: birthday, deathday: deathday, place_of_birth: place_of_birth, gender: gender, profile_path_url: profile_path_url}

    return person_params
  end

  def self.process_cast(credits, movieid)
    @cast_members = credits["cast"]
    @cast_members.each do |cast|
      character = cast["character"]
      order = cast["order"]
      tmdb_people_id = cast["id"]
      @person = Person.find_by(tmdb_people_id: tmdb_people_id)
      if @person.nil?
        person_params = Person.get_person_details(tmdb_people_id)
        @person = Person.create(person_params)
        Resque.enqueue(Sleeper, 1)
        cast_params = {movie_id: movieid, person_id: @person.id, character: character, order: order}
        @cast_member = MovieCast.create(cast_params)
      else
        cast_params = {movie_id: movieid, person_id: @person.id, character: character, order: order}
        @cast_member = MovieCast.create(cast_params)
      end
    end
  end

  def self.process_crew(credits, movieid)
    @crew_members = credits["crew"]
    @crew_members.each do |crew|
      department = crew["department"]
      job = crew["job"]
      next unless department == "Directing" || department == "Writing"
      tmdb_people_id = crew["id"]
      @person = Person.find_or_initialize_by(tmdb_people_id: tmdb_people_id)
      if @person.new_record?
        person_params = Person.get_person_details(tmdb_people_id)
        @person = Person.create(person_params)
        crew_params = {movie_id: movieid, person_id: @person.id, department: department, job: job}
        @crew_member = MovieCrew.create(crew_params)
      else
        crew_params = {movie_id: movieid, person_id: @person.id, department: department, job: job}
        @crew_member = MovieCrew.create(crew_params)
      end
    end
  end
end
