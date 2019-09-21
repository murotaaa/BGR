class DicesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	dice = current_user.dices.new(game_id: game.id)
  	dice.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	dice = current_user.dices.find_by(game_id: game.id)
  	dice.destroy
  	redirect_to game_path(game)
  end
end
