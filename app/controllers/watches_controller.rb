class WatchesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	watch = current_user.watches.new(game_id: @game.id)
  	watch.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	watch = current_user.watch.find_by(game_id: @game.id)
  	watch.destroy
  end
end
