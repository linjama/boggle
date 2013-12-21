class BoggleGameController < ApplicationController
  include ApplicationHelper
  def index
    @letters = BoggleGame.first.letters
  end

  def update
    game = BoggleGame.first
    game.generate_letters
    game.save!
    redirect_to action: 'index'
  end
end
