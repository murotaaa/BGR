class LucksController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	luck = current_user.lucks.new(game_id: game.id)
  	luck.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	luck = current_user.lucks.find_by(game_id: game.id)
  	luck.destroy
  	redirect_to game_path(game)
  end
end
