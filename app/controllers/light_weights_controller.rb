class LightWeightsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	light_weight = current_user.light_weights.new(game_id: @game.id)
  	light_weight.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	light_weight = current_user.light_weights.find_by(game_id: @game.id)
  	light_weight.destroy
  end
end
