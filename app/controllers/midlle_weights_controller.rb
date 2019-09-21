class MidlleWeightsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	midlle_weight = current_user.midlle_weights.new(game_id: game.id)
  	midlle_weight.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	midlle_weight = current_user.midlle_weights.find_by(game_id: game.id)
  	midlle_weight.destroy
  	redirect_to game_path(game)
  end
end
