class GoodsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	good = current_user.goods.new(game_id: game.id)
  	good.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	good = current_user.goods.find_by(game_id: game.id)
  	good.destroy
  	redirect_to game_path(game)
  end
end
