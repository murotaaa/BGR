class HeavyWeightsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	heavy_weight = current_user.heavy_weights.new(game_id: @game.id)
  	heavy_weight.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	heavy_weight = current_user.heavy_weights.find_by(game_id: @game.id)
  	heavy_weight.destroy
  end
end
