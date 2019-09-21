class ActionsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	action = current_user.actions.new(game_id: game.id)
  	action.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	action = current_user.actions.find_by(game_id: game.id)
  	action.destroy
  	redirect_to game_path(game)
  end
end
