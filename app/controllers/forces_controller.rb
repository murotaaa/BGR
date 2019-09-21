class ForcesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	force = current_user.forces.new(game_id: game.id)
  	force.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	force = current_user.forces.find_by(game_id: game.id)
  	force.destroy
  	redirect_to game_path(game)
  end
end
