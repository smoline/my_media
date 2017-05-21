class MoviesController < ApplicationController
  before_action :authenticate_user!
  # GET /movies
  def index
    if params[:search]
      @movies = Movie.search(params[:search]).order("title DESC")
    else
      @movies = Movie.all
    end
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
    @movie.created_by_id = current_user.id

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
      title = Movie.find_movie_title(upc)
      @movie_info = Movie.find_initial_movie_info(title)
      render json: @movie_info
    else
      redirect_to @movie
    end
  end

  def get_movies
    title = params[:title]
    @movie_info = Movie.find_initial_movie_info(title)
    render json: @movie_info
  end

  def get_movie_info
    more_movie_info = Movie.find_more_movie_info(params[:tmdb_id])

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
