class GamesController < ApplicationController
  before_action :authenticate_user!
  # GET /games
  def index
    if params[:search]
      @games = Game.search(params[:search], current_user.id).page(params[:page]).per(12).order('title')
    elsif params[:sort] == 'title'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(12).order('title')
    elsif params[:sort] == 'release_date'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(12).order('release_date DESC')
    elsif params[:sort] == 'created_at'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(12).order('created_at DESC')
    elsif params[:sort] == 'console_type'
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(12).order('console_type DESC')
    elsif params[:sort] == 'favorites'
      @games = current_user.games.page(params[:page]).per(12).order('title')
    else
      @games = Game.where(created_by_id: current_user.id).page(params[:page]).per(12).order('title')
    end
  end

  # GET /games/1
  def show
    @game = Game.find(params[:id])
  end

  # GET /games/new
  def new
    @game = Game.new
    @game.upc = params[:upc]
    @game.title = params[:title]
    @game.description = params[:description]
    @game.game_image_url = params[:game_image_url]
    @game.brand = params[:brand]
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
      game_info = Game.find_game_info(upc)
      title = game_info["items"].first["title"]
      description = game_info["items"].first["description"]
      game_image_url = game_info["items"].first["images"]
      brand = game_info["items"].first["brand"]
      redirect_to new_game_path(upc: params[:upc], title: title, description: description, game_image_url: game_image_url, brand: brand)
    else
      redirect_to @game
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def game_params
    params.require(:game).permit(:upc, :title, :description, :created_by_id, :game_image_url, :brand, :console_type, :image, :release_date)
  end
end
