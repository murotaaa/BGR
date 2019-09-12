class WatchesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	watch = current_user.watches.new(game_id: game.id)
  	watch.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	watch = current_user.watches.find_by(game_id: game.id)
  	watch.destroy
  	redirect_to game_path(game)
  end
end
