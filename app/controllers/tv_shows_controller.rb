class TvShowsController < ApplicationController
  before_action :authenticate_user!
  # GET /tv_shows
  def index
    @tv_shows = TvShow.all.page(params[:page]).per(24).order('name')
  end

  # GET /tv_shows/1
  def show
    @tv_show = TvShow.find(params[:id])
  end

  # GET /tv_shows/new
  def new
    @tv_show = TvShow.new
  end

  # GET /tv_shows/1/edit
  def edit
    @tv_show = TvShow.find(params[:id])
  end

  # POST /tv_shows
  def create
    @tv_show = TvShow.new(tv_show_params)

    if @tv_show.save
      redirect_to @tv_show, notice: 'Tv show was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tv_shows/1
  def update
    @tv_show = TvShow.find(params[:id])
    if @tv_show.update(tv_show_params)
      redirect_to @tv_show, notice: 'Tv show was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tv_shows/1
  def destroy
    @tv_show = TvShow.find(params[:id])
    @tv_show.destroy
    redirect_to tv_shows_url, notice: 'Tv show was successfully destroyed.'
  end

  def get_tv_shows
    title = params[:title]
    @tv_show = TvShow.find_or_initialize_by(title: params[:title])
    if @tv_show.new_record?
      @movie_info = Movie.find_initial_movie_info(title)
      render json: @movie_info
    else
      redirect_to @movie
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tv_show_params
    params.require(:tv_show).permit(:name, :tmdb_show_id, :overview, :first_air_date, :last_air_date, :number_of_seasons, :number_of_episodes, :show_poster_path)
  end
end
