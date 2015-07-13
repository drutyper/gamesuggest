class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @game = Game.new
    @games = Game.all
  end

  def new
    @game = Game.where(:platform, :name)
    @meta = MetacriticAPI.new
    s = @meta.game_suggest params[:platform], params[:title]
    render new_game
  end

  def create
    @game = Game.where(:platform, :name)
    @meta = MetacriticAPI.new
    
    v = params[:game]
    s = @meta.game_suggest v[:platform].strip, v[:name]  #params[:platform], params[:title]

    if s
      flash[:success] = "Thanks for submitting a query, 
      wait for people to respond with a game suggestion"
    redirect_to "/games"
    end
  end
end