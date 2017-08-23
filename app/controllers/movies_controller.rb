class MoviesController < ApplicationController
  before_action :authenticate_user!
  # GET /movies
  def index
    if params[:search]
      @movies = Movie.search(params[:search], current_user.id).page(params[:page]).per(24).order('title')
    elsif params[:sort] == 'title'
      @movies = current_user.owned_movies.page(params[:page]).per(24).order('title')
    elsif params[:sort] == 'release_date'
      @movies = current_user.owned_movies.page(params[:page]).per(24).order('release_date DESC')
    elsif params[:sort] == 'created_at'
      @movies = current_user.owned_movies.page(params[:page]).per(24).order('owners.created_at DESC')
    elsif params[:sort] == 'favorites'
      @movies = current_user.favorite_movies.page(params[:page]).per(24).order('title')
    else
      @movies = current_user.owned_movies.page(params[:page]).per(24).order('title')
    end
  end

  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
    @genres = @movie.genres.all
    @actors = @movie.movie_casts.all
    @crews = @movie.movie_crews.all
    @owner_info = @movie.owners.find_by(user_id: current_user.id)
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.description = params[:description]
    @movie.release_date = params[:release_date]
    @movie.tmdb_id = params[:tmdb_id]
    @movie.runtime = params[:runtime]
    @movie.tagline = params[:tagline]
    @movie.movie_image_url = params[:movie_image_url]
    @owner_info = @movie.owners.new
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
    @owner_info = @movie.owners.find_by(user_id: current_user.id)
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)
    @movie.owners.first.user_id = current_user.id

    if @movie.save
      movieid = @movie.id
      more_movie_info = Movie.find_more_movie_info(@movie.tmdb_id)
      @movie_genres = more_movie_info["genres"]
      @movie_genres.each do |thisgenre|
        genreid = thisgenre["id"]
        name = thisgenre["name"]
        @genre = Genre.find_or_create_by(tmdb_genre_id: genreid, name: name)
        @movie.genres << @genre
      end
      credits = Movie.get_movie_credits(@movie.tmdb_id)
      Person.process_cast(credits, movieid)
      Person.process_crew(credits, movieid)
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    @movie = current_user.owned_movies.find_by(id: params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie = Movie.find(params[:id])
    @owner = @movie.owners.find_by(user_id: current_user.id)
    # @movie.destroy
    @owner.destroy
    redirect_to movies_url, notice: 'Movie was successfully removed from your list.'
  end

  def get_barcode
    upc = params[:upc]
    @owned_movie = Owner.find_or_initialize_by(upc: params[:upc], user_id: current_user.id)
    # @movie = Movie.find_or_initialize_by(upc: params[:upc], created_by_id: current_user.id)
    if @owned_movie.new_record?
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
    upc = params[:upc]
    more_movie_info = Movie.find_more_movie_info(params[:tmdb_id])
    @movie = Movie.find_or_initialize_by(tmdb_id: params[:tmdb_id])
    if @movie.new_record?
      if more_movie_info["poster_path"].nil?
        movie_image_url = more_movie_info["poster_path"]
      else
        movie_image_url = "http://image.tmdb.org/t/p/w185/#{more_movie_info["poster_path"]}"
      end
      movie_params = more_movie_info.merge(
                    owners_attributes: [upc: params[:upc]],
                    tmdb_id: params[:tmdb_id],
                    description: more_movie_info["overview"],
                    movie_image_url: movie_image_url)
      redirect_to new_movie_path(movie_params)
    else
      @movie.owners.create(user_id: current_user.id, movie_id: @movie.id, upc: params[:upc], notes: params[:notes])
      redirect_to @movie
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def movie_params
    params.require(:movie).permit(:title, :tmdb_id, :description, :release_date, :runtime, :tagline, :movie_image_url, owners_attributes: [:id, :upc, :notes, :image])
    # owners_attributes: Owner.attribute_names.map(&:to_sym)
    # owners_attributes: [:id, :upc, :notes, :image]
  end
end
