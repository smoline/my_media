class TvSeasonsController < ApplicationController
  # GET /tv_seasons
  def index
    @tv_seasons = TvSeason.all
  end

  # GET /tv_seasons/1
  def show
    @tv_season = TvSeason.find(params[:id])
  end

  # GET /tv_seasons/new
  def new
    @tv_season = TvSeason.new
  end

  # GET /tv_seasons/1/edit
  def edit
    @tv_season = TvSeason.find(params[:id])
  end

  # POST /tv_seasons
  def create
    @tv_season = TvSeason.new(tv_season_params)

    if @tv_season.save
      redirect_to @tv_season, notice: 'Tv season was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tv_seasons/1
  def update
    @tv_season = TvSeason.find(params[:id])
    if @tv_season.update(tv_season_params)
      redirect_to @tv_season, notice: 'Tv season was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tv_seasons/1
  def destroy
    @tv_season = TvSeason.find(params[:id])
    @tv_season.destroy
    redirect_to tv_seasons_url, notice: 'Tv season was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def tv_season_params
    params.require(:tv_season).permit(:name, :tmdb_season_id, :tv_show_id, :overview, :air_date, :season_number, :season_poster_path)
  end
end
