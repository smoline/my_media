class Person < ApplicationRecord
  has_many :movies_as_cast, through: :movie_casts, class_name: "Movie"
  has_many :movies_as_crew, through: :movie_crews, class_name: "Movie"

  def create
    @person = Person.new
    @person.name = params[:name]
    @person.tmdb_people_id = params[:tmdb_people_id]
    @person.gender = params[:gender]
    @person.biography = params[:biography]
    @person.birthday = params[:birthday]
    @person.deathday = params[:deathday]
    @person.place_of_birth = params[:place_of_birth]
    @person.profile_path_url = params[:profile_path_url]
    @person.save!
  end

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
    profile_path_url = "http://image.tmdb.org/t/p/w185/#{person_details["profile_path"]}"

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
