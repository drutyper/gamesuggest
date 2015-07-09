class AskGameController < ApplicationController

  def create
    @ask_game = AskGame.where(:text)
  end

  def new
    @ask_game = AskGame.new
  end
end