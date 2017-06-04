class GamesController < ApplicationController
  before_action :authenticate_user!
  # GET /games
  def index
    if params[:search]
      @games = Game.search(params[:search], current_user.id).page(params[:page]).per(10).order('title')
    elsif params[:sort] == 'title'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(10).order('title')
    elsif params[:sort] == 'release_date'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(10).order('release_date DESC')
    elsif params[:sort] == 'created_at'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(10).order('created_at DESC')
    elsif params[:sort] == 'console_type'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(10).order('console_type DESC')
    elsif params[:sort] == 'favorites'
      @games = current_user.games.page(params[:page]).per(10).order('title')
    else
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(10).order('title')
    end
  end

  # GET /games/1
  def show
    @game = Game.find(params[:id])
    # @game_genre = @game.game_genre_lists.all
  end

  # GET /games/new
  def new
    @game = Game.new
    @game.upc = params[:upc]
    @game.title = params[:title]
    @game.description = params[:description]
    @game.release_date = params[:release_date]
    @game.game_image_url = params[:game_image_url]
    @game.brand = params[:brand]
    @game.igdb_id = params[:igdb_id]
  end

  # GET /games/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    @game.created_by_id = current_user.id

    if @game.save
      more_game_info = Game.find_more_game_info(@game.igdb_id)
      @game_genres = more_game_info["genres"]
      @game_genres.each do |thisgenre|
        genreid = thisgenre
        @genre = GameGenreList.find_or_create_by(igdb_genre_id: genreid)
        @game.game_genre_lists << @genre
      end
      redirect_to @game, notice: 'Video Game was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /games/1
  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to @game, notice: 'Video Game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /games/1
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_url, notice: 'Video Game was successfully destroyed.'
  end

  def get_barcode
    upc = params[:upc]
    @game = Game.find_or_initialize_by(upc: params[:upc], created_by_id: current_user.id)
    if @game.new_record?
      title = Game.find_game_title(upc)
      @games_info = Game.find_initial_games_info(title)
      p @games_info
      render json: @games_info
    else
      redirect_to @game
    end
  end

  def get_games
    title = params[:title]
    @game = Game.find_or_initialize_by(title: params[:title], created_by_id: current_user.id)
    if @game.new_record?
      @games_info = Game.find_initial_games_info(title)
      render json: @games_info
    else
      redirect_to @game
    end
  end

  def get_game_info
    more_game_info = Game.find_more_game_info(params[:igdb_id])

    game_params = more_game_info.merge(
                    upc: params[:upc],
                    igdb_id: params[:igdb_id],
                    title: more_game_info["name"],
                    description: more_game_info["summary"],
                    release_date: Time.at(more_game_info["first_release_date"] / 1000).to_date.to_s,
                    brand: more_game_info["developers"].first,
                    game_image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/#{more_game_info["cover"]["cloudinary_id"]}.jpg")
    redirect_to new_game_path(game_params)
  end

  private

  # Only allow a trusted parameter "white list" through.
  def game_params
    params.require(:game).permit(:upc, :title, :description, :created_by_id, :game_image_url, :brand, :console_type, :image, :release_date, :igdb_id)
  end
end
