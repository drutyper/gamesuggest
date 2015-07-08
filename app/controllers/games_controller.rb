class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = Game.all
  end

  def new
    @game = Game.where(:platform, :name)
    @meta = MetacriticAPI.new
    s = @meta.game_suggest params[:platform], params[:title]

  end

  def search
    @meta = MetacriticAPI.new
    @search = @meta.game_suggest params[:platform], params[:title]
end