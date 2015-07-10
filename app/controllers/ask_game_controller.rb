class AskGameController < ApplicationController

  def create
    @ask_game = AskGame.new
    @ask_game.save
      redirect_to "/games", notice: "type of game saved, wait for responses"
  end


  def new
    @ask_game = AskGame.create
  end
end