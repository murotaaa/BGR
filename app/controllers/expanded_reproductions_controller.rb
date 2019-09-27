class ExpandedReproductionsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	expanded_reproduction = current_user.expanded_reproductions.new(game_id: @game.id)
  	expanded_reproduction.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	expanded_reproduction = current_user.expanded_reproductions.find_by(game_id: @game.id)
  	expanded_reproduction.destroy
  end
end
