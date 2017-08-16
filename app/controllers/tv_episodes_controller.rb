class TvEpisodesController < ApplicationController
  before_action :authenticate_user!
  # GET /tv_episodes
  def index
    @tv_episodes = TvEpisode.all.page(params[:page]).per(24).order('title')
  end

  # GET /tv_episodes/1
  def show
    @tv_episode = TvEpisode.find(params[:id])
  end

  # GET /tv_episodes/new
  def new
    @tv_episode = TvEpisode.new
  end

  # GET /tv_episodes/1/edit
  def edit
    @tv_episode = TvEpisode.find(params[:id])
  end

  # POST /tv_episodes
  def create
    @tv_episode = TvEpisode.new(tv_episode_params)

    if @tv_episode.save
      redirect_to @tv_episode, notice: 'Tv episode was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tv_episodes/1
  def update
    @tv_episode = TvEpisode.find(params[:id])
    if @tv_episode.update(tv_episode_params)
      redirect_to @tv_episode, notice: 'Tv episode was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tv_episodes/1
  def destroy
    @tv_episode = TvEpisode.find(params[:id])
    @tv_episode.destroy
    redirect_to tv_episodes_url, notice: 'Tv episode was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tv_episode_params
    params.require(:tv_episode).permit(:title, :tmdb_episode_id, :description, :air_date, :episode_number, :season_number, :tvshow_image_url, :created_by_id)
  end
end
