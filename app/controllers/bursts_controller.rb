class BurstsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	burst = current_user.bursts.new(game_id: game.id)
  	burst.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	burst = current_user.bursts.find_by(game_id: game.id)
  	burst.destroy
  	redirect_to game_path(game)
  end
end
