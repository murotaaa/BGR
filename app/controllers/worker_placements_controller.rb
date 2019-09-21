class WorkerPlacementsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	worker_placement = current_user.worker_placements.new(game_id: game.id)
  	worker_placement.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	worker_placement = current_user.worker_placements.find_by(game_id: game.id)
  	worker_placement.destroy
  	redirect_to game_path(game)
  end
end
