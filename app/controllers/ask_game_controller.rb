class AskGameController < ApplicationController

  def create
    @ask_game = AskGame.new
    @ask_game.save
      redirect_to "/games"
  end


  def new 
    @ask = AskGame.create
    #redirect_to "/games", notice: "type of game saved, wait for responses"
  end

  def update
    redirect_to "/games"
  end
end