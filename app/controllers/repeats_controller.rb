class RepeatsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	repeat = current_user.repeats.new(game_id: game.id)
  	repeat.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	repeat = current_user.repeats.find_by(game_id: game.id)
  	repeat.destroy
  	redirect_to game_path(game)
  end
end
