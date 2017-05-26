class MoviesController < ApplicationController
  before_action :authenticate_user!
  # GET /movies
  def index
    if params[:search]
      @movies = Movie.search(params[:search]).page(params[:page]).per(20).order('title')
    elsif params[:sort] == 'title'
      @movies = Movie.page(params[:page]).per(20).order('title')
    elsif params[:sort] == 'release_date'
      @movies = Movie.page(params[:page]).per(20).order('release_date DESC')
    elsif params[:sort] == 'created_at'
      @movies = Movie.page(params[:page]).per(20).order('created_at DESC')
    else
      @movies = Movie.page(params[:page]).per(20).order('title')
    end
  end

  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
    @genres = @movie.genres.all
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie.upc = params[:upc]
    @movie.title = params[:title]
    @movie.description = params[:description]
    @movie.release_date = params[:release_date]
    @movie.tmdb_id = params[:tmdb_id]
    @movie.runtime = params[:runtime]
    @movie.tagline = params[:tagline]
    @movie.movie_image_url = params[:movie_image_url]
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)
    @movie.created_by_id = current_user.id

    if @movie.save
      more_movie_info = Movie.find_more_movie_info(@movie.tmdb_id)
      @movie_genres = more_movie_info["genres"]
      @movie_genres.each do |thisgenre|
        genreid = thisgenre["id"]
        name = thisgenre["name"]
        @genre = Genre.find_or_create_by(tmdb_genre_id: genreid, name: name)
        @movie.genres << @genre
      end
      credits = Movie.get_movie_credits(@movie.tmdb_id)
      @cast_members = credits["cast"]
      @cast_members.each do |cast|
        character = cast["character"]
        order = cast["order"]
        tmdb_people_id = cast["id"]
        name = cast["name"]
        @person = Person.find_by(tmdb_people_id: tmdb_people_id, name: name)
        if @person.empty?
          person_details = Person.get_person_details(tmdb_people_id)
          Person.new = person_details.merge(
                          name: person_details["name"],
                          tmdb_people_id: params[:tmdb_people_id],
                          biography: person_details["biography"],
                          birthday: person_details["birthday"],
                          deathday: person_details["deathday"],
                          place_of_birth: person_details["place_of_birth"],
                          gender: person_details["gender"]
                          profile_path_url: "http://image.tmdb.org/t/p/w185/#{person_details["profile_path"]}")
          @movie.people << @person
        else
          @movie.people << @person
        end
      end
      @crew_members = credits["crew"]
      p @crew_members
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  def get_barcode
    upc = params[:upc]
    @movie = Movie.find_or_initialize_by(upc: params[:upc])
    if @movie.new_record?
      title = Movie.find_movie_title(upc)
      @movie_info = Movie.find_initial_movie_info(title)
      render json: @movie_info
    else
      redirect_to @movie
    end
  end

  def get_movies
    title = params[:title]
    @movie = Movie.find_or_initialize_by(title: params[:title])
    if @movie.new_record?
      @movie_info = Movie.find_initial_movie_info(title)
      render json: @movie_info
    else
      redirect_to @movie
    end
  end

  def get_movie_info
    more_movie_info = Movie.find_more_movie_info(params[:tmdb_id])
    @movie_genres = more_movie_info["genres"]

    movie_params = more_movie_info.merge(
                    upc: params[:upc],
                    tmdb_id: params[:tmdb_id],
                    description: more_movie_info["overview"],
                    movie_image_url: "http://image.tmdb.org/t/p/w185/#{more_movie_info["poster_path"]}")
    redirect_to new_movie_path(movie_params)
  end

  private

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :tmdb_id, :description, :release_date, :upc, :runtime, :tagline, :movie_image_url, :image)
  end
end
