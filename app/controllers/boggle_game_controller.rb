class BoggleGameController < ApplicationController
  include ApplicationHelper
  def index
    @letters = BoggleGame.first.letters
  end

  def update
    letters = generate_letters('A')
    game = BoggleGame.first
    game.letters = letters
    game.save!
    redirect_to action: 'index'
  end
end
