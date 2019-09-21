class BadsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	bad = current_user.bads.new(game_id: game.id)
  	bad.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	bad = current_user.bads.find_by(game_id: game.id)
  	bad.destroy
  	redirect_to game_path(game)
  end
end
