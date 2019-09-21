class SuperMidlleWeightsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	super_midlle_weight = current_user.super_midlle_weights.new(game_id: game.id)
  	super_midlle_weight.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	super_midlle_weight = current_user.super_midlle_weights.find_by(game_id: game.id)
  	super_midlle_weight.destroy
  	redirect_to game_path(game)
  end
end
