class SetCollectionsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	set_collection = current_user.set_collections.new(game_id: game.id)
  	set_collection.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	set_collection = current_user.set_collections.find_by(game_id: game.id)
  	set_collection.destroy
  	redirect_to game_path(game)
  end
end
