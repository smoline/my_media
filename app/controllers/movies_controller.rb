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
      title = find_movie_title(upc)
      redirect_to new_movie_path(upc: params[:upc], title: title)
    else
      redirect_to @movie
    end
  end

  def find_movie_title(upc)
    response = HTTParty.get("http://www.searchupc.com/handlers/upcsearch.ashx?request_type=3&access_token=38EB43B6-3A6F-4840-9A10-150E79A0983A&upc=#{upc}")
    title = JSON.parse(response.body)["0"]["productname"]
    p title
    return title
  end

  private

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :tmdb_id, :description, :release_date, :upc, :runtime, :tagline)
  end
end
