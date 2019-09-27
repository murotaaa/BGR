class CooperationsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	cooperation = current_user.cooperations.new(game_id: @game.id)
  	cooperation.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	cooperation = current_user.cooperations.find_by(game_id: @game.id)
  	cooperation.destroy
  end
end
