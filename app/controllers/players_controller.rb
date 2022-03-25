class PlayersController < ApplicationController
  def index
    @players = Player.all
    @roles = Role.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.wins = 0
    @player.losses = 0
    @player.alive = true

    if @player.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])

    if @player.update(player_params)
      redirect_to @player
    else
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    redirect_to root_path
  end

  def shot
    @player = Player.find(params[:id])
    @player.toggle!(:alive)
    redirect_to @player
  end

  def reset_game
    Player.all.each do |player|
      player.update(alive: true)
    end
    redirect_to root_path
  end

  private

  # Only allow a list of trusted parameters through.
  def player_params
    params.require(:player).permit(:name, :wins, :losses, :alive)
  end
end
