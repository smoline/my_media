class TvShowsController < ApplicationController
  before_action :authenticate_user!
  # GET /tv_shows
  def index
    @tv_shows = current_user.tv_shows.all.page(params[:page]).per(24).order('name')
  end

  # GET /tv_shows/1
  def show
    @tv_show = TvShow.find(params[:id])
    @tv_season = @tv_show.tv_seasons.all
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
    @tv_season_info = @tv_show.tv_seasons.new
    @tv_season_info.name = params[:season_name]
    @tv_season_info.tmdb_season_id = params[:tmdb_season_id]
    @tv_season_info.overview = params[:season_overview]
    @tv_season_info.air_date = params[:season_air_date]
    @tv_season_info.season_number = params[:season_number]
    @tv_season_info.season_poster_path = params[:season_poster_path]
    @tv_episode_info = @tv_season_info.tv_episodes.new
    @tv_episode_info.title = params[:episode_title]
    @tv_episode_info.tmdb_episode_id = params[:tmdb_episode_id]
    @tv_episode_info.description = params[:episode_description]
    @tv_episode_info.air_date = params[:episode_air_date]
    @tv_episode_info.episode_number = params[:episode_number]
    @tv_episode_info.season_number = params[:season_number]
    @tv_episode_info.episode_image_url = params[:episode_image_url]
    @tv_owner_info = @tv_episode_info.tv_owners.new
  end

  # GET /tv_shows/1/edit
  def edit
    @tv_show = TvShow.find(params[:id])
    @tv_owner_info = @tv_show.tv_owners.find_by(user_id: current_user.id)
  end

  # POST /tv_shows
  def create
    @tv_show = TvShow.new(tv_show_params)
    @tv_season_info = @tv_show.tv_seasons.new(tv_show_params["tv_seasons_attributes"]["0"])
    @tv_episode_info = @tv_season_info.tv_episodes.new(tv_show_params["tv_episodes_attributes"]["0"])
    @tv_owner_info = @tv_episode_info.tv_owners.new["tv_owners_attributes"]["0"]
    @tv_show.tv_owners.first.user_id = current_user.id

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
      @tv_season_info = more_tv_show_info
      render json: @tv_season_info
    else
      # @tv_show.tv_owner.create(user_id: current_user.id, tv_show_id: @tv_show.id, notes: params[:notes])
      redirect_to @tv_show
    end
  end

  def get_tv_season_info
    tmdb_show_id = params[:tmdb_show_id]
    season_number = params[:season_number]
    more_tv_season_info = TvSeason.find_more_tv_season_info(tmdb_show_id, season_number)
    @tv_season = TvSeason.find_or_initialize_by(tmdb_season_id: more_tv_season_info["id"])
    if @tv_season.new_record?
      tv_season_info = Hash.new
      tv_season_info = more_tv_season_info.merge(
                    tmdb_show_id: params[:tmdb_show_id])
      @tv_episode_info = tv_season_info
      render json: @tv_episode_info
    else
      redirect_to @tv_show
    end
  end

  def get_tv_episode_info
    tmdb_show_id = params[:tmdb_show_id]
    season_number = params[:season_number]
    episode_number = params[:episode_number]
    tmdb_episode_id = params[:tmdb_episode_id]
    @tv_episode = TvEpisode.find_or_initialize_by(tmdb_episode_id: params[:tmdb_episode_id])
    if @tv_episode.new_record?
      more_tv_show_info = TvShow.find_more_tv_show_info(params[:tmdb_show_id])
      more_tv_season_info = TvSeason.find_more_tv_season_info(tmdb_show_id, season_number)
      tv_episodes = more_tv_season_info["episodes"]
      more_tv_episode_info = tv_episodes.select { |episode| episode["id"] == tmdb_episode_id.to_i }.reduce
      if more_tv_show_info["poster_path"].nil?
        show_poster_path = more_tv_show_info["poster_path"]
      else
        show_poster_path = "http://image.tmdb.org/t/p/w185/#{more_tv_show_info["poster_path"]}"
      end
      if more_tv_season_info["poster_path"].nil?
        season_poster_path = more_tv_season_info["poster_path"]
      else
        season_poster_path = "http://image.tmdb.org/t/p/w185/#{more_tv_season_info["poster_path"]}"
      end
      if more_tv_episode_info["still_path"].nil?
        episode_image_url = more_tv_episode_info["still_path"]
      else
        episode_image_url = "http://image.tmdb.org/t/p/w185/#{more_tv_episode_info["still_path"]}"
      end
      tv_show_params = Hash.new
      tv_show_params = tv_show_params.merge(
                    name: more_tv_show_info["name"],
                    tmdb_show_id: params[:tmdb_show_id],
                    overview: more_tv_show_info["overview"],
                    first_air_date: more_tv_show_info["first_air_date"],
                    last_air_date: more_tv_show_info["last_air_date"],
                    number_of_seasons: more_tv_show_info["number_of_seasons"],
                    number_of_episodes: more_tv_show_info["number_of_episodes"],
                    show_poster_path: show_poster_path,
                    season_name: more_tv_season_info["name"],
                    tmdb_season_id: more_tv_season_info["id"],
                    season_overview: more_tv_season_info["overview"],
                    season_air_date: more_tv_season_info["air_date"],
                    season_number: more_tv_season_info["season_number"],
                    season_poster_path: season_poster_path,
                    episode_title: more_tv_episode_info["name"],
                    tmdb_episode_id: params[:tmdb_episode_id],
                    episode_description: more_tv_episode_info["overview"],
                    episode_air_date: more_tv_episode_info["air_date"],
                    episode_number: params[:episode_number],
                    season_number: params[:season_number],
                    episode_image_url: episode_image_url)
      redirect_to new_tv_show_path(tv_show_params)
    else
      redirect_to @tv_show
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tv_show_params
    params.require(:tv_show).permit(:name, :tmdb_show_id, :overview, :first_air_date, :last_air_date, :number_of_seasons, :number_of_episodes, :show_poster_path, :tv_seasons_attributes [:id, :name, :tmdb_season_id, :tv_show_id, :overview, :air_date, :season_number, :season_poster_path, :tv_episodes_attributes [:id, :title, :tmdb_episode_id, :description, :air_date, :episode_number, :season_number, :tvshow_image_url, :tv_owners_attributes [:id, :user_id, :tv_episode_id, :notes, :watched]]])
  end
end
