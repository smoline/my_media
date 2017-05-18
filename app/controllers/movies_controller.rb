class MoviesController < ApplicationController
  before_action :authenticate_user!
  # GET /movies
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
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

    if @movie.save
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
      title = @movie.find_movie_title(upc)
      movie_info = @movie.find_initial_movie_info(title)
      # if movie_info.size > 1
      #   choose_correct_movie(movie_info)
      # else
      #   tmdb_id = movie_info["id"]
      #   description = movie_info["overview"]
      #   release_date = movie_info["release_date"]
      #   more_movie_info = @movie.find_other_movie_info(tmdb_id)
      #   runtime = more_movie_info["runtime"]
      #   tagline = more_movie_info["tagline"]
      # end

      tmdb_id = movie_info.first["id"]
      description = movie_info.first["overview"]
      release_date = movie_info.first["release_date"]
      more_movie_info = @movie.find_other_movie_info(tmdb_id)
      runtime = more_movie_info["runtime"]
      tagline = more_movie_info["tagline"]
      poster_path = more_movie_info["poster_path"]
      p poster_path
      movie_image_url = "http://image.tmdb.org/t/p/w185/#{poster_path}"

      redirect_to new_movie_path(upc: params[:upc], title: title, description: description, release_date: release_date, tmdb_id: tmdb_id, runtime: runtime, tagline: tagline, movie_image_url: movie_image_url)
    else
      redirect_to @movie
    end
  end

  def choose_correct_movie(movie_info)
    @movies_to_choose_from = movie_info
  end

  private

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :tmdb_id, :description, :release_date, :upc, :runtime, :tagline, :movie_image_url)
  end
end
