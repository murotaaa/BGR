class MemoriesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	memory = current_user.memories.new(game_id: game.id)
  	memory.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	memory = current_user.memories.find_by(game_id: game.id)
  	memory.destroy
  	redirect_to game_path(game)
  end
end
