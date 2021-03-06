class PartnershipsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	partnership = current_user.partnerships.new(game_id: @game.id)
  	partnership.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	partnership = current_user.partnerships.find_by(game_id: @game.id)
  	partnership.destroy
  end
end
