class UngoodsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	ungood = current_user.ungoods.new(game_id: @game.id)
  	ungood.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	ungood = current_user.ungoods.find_by(game_id: @game.id)
  	ungood.destroy
  end
end
