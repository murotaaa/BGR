class SuperHeavyWeightsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	super_heavy_weight = current_user.super_heavy_weights.new(game_id: @game.id)
  	super_heavy_weight.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	super_heavy_weight = current_user.super_heavy_weights.find_by(game_id: @game.id)
  	super_heavy_weight.destroy
  end
end
