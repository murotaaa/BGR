class FairsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	fair = current_user.fairs.new(game_id: @game.id)
  	fair.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	fair = current_user.fairs.find_by(game_id: @game.id)
  	fair.destroy
  end
end
