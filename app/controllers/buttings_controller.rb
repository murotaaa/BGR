class ButtingsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	butting = current_user.buttings.new(game_id: game.id)
  	butting.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	butting = current_user.buttings.find_by(game_id: game.id)
  	butting.destroy
  	redirect_to game_path(game)
  end
end
