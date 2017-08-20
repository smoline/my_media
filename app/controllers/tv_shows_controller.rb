class TvShowsController < ApplicationController
  before_action :authenticate_user!
  # GET /tv_shows
  def index
    @tv_shows = TvShow.all.page(params[:page]).per(24).order('name')
  end

  # GET /tv_shows/1
  def show
    @tv_show = TvShow.find(params[:id])
    @tv_season = @tv_show.tv_seasons.all
    @tv_episode = @tv_season.tv_episodes.all
    @tv_owner = @tv_episode.tv_owners.all
  end

  # GET /tv_shows/new
  def new
    @tv_show = TvShow.new
    @tv_show.tmdb_show_id = params[:tmdb_show_id]
    @tv_show.name = params[:name]
    @tv_show.overview = params[:overview]
    @tv_show.first_air_date = params[:first_air_date]
    @tv_show.last_air_date = params[:last_air_date]
    @tv_show.number_of_seasons = params[:number_of_seasons]
    @tv_show.number_of_episodes = params[:number_of_episodes]
    @tv_show.show_poster_path = params[:show_poster_path]
    @tv_season = @tv_show.tv_seasons.build
    @tv_episode = @tv_season.tv_episodes.build
    @tv_owner = @tv_episode.tv_owners.build
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
    name = params[:name]
    @tv_show = TvShow.find_or_initialize_by(name: params[:name])
    if @tv_show.new_record?
      @tv_show_info = TvShow.find_initial_tv_show_info(name)
      render json: @tv_show_info
    else
      redirect_to @tv_show
    end
  end

  def get_tv_show_info
    more_tv_show_info = TvShow.find_more_tv_show_info(params[:tmdb_show_id])
    @tv_show = TvShow.find_or_initialize_by(tmdb_show_id: params[:tmdb_show_id])
    if @tv_show.new_record?
      if more_tv_show_info["poster_path"].nil?
        show_poster_path = more_tv_show_info["poster_path"]
      else
        show_poster_path = "http://image.tmdb.org/t/p/w185/#{more_tv_show_info["poster_path"]}"
      end
      tv_show_params = more_tv_show_info.merge(
                    tmdb_show_id: params[:tmdb_show_id],
                    overview: more_tv_show_info["overview"],
                    first_air_date: more_tv_show_info["first_air_date"],
                    last_air_date: more_tv_show_info["last_air_date"],
                    number_of_seasons: more_tv_show_info["number_of_seasons"],
                    number_of_episodes: more_tv_show_info["number_of_episodes"],
                    show_poster_path: show_poster_path)
      redirect_to new_tv_show_path(tv_show_params)
    else
      # @tv_show.owners.create(user_id: current_user.id, tv_show_id: @tv_show.id, notes: params[:notes])
      redirect_to @tv_show
    end
  end


  private

  # Only allow a trusted parameter "white list" through.
  def tv_show_params
    params.require(:tv_show).permit(:name, :tmdb_show_id, :overview, :first_air_date, :last_air_date, :number_of_seasons, :number_of_episodes, :show_poster_path, :tv_seasons_attributes [:name, :tmdb_season_id, :tv_show_id, :overview, :air_date, :season_number, :season_poster_path, :tv_episodes_attributes [:title, :tmdb_episode_id, :description, :air_date, :episode_number, :season_number, :tvshow_image_url, :tv_owners_attributes [:id, :user_id, :tv_episode_id, :notes, :watched]]])
  end
end
