class TilePlacementsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	tile_placement = current_user.tile_placements.new(game_id: @game.id)
  	tile_placement.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	tile_placement = current_user.tile_placements.find_by(game_id: @game.id)
  	tile_placement.destroy
  end
end
