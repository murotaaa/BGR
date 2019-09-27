class OnlyOncesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	only_once = current_user.only_onces.new(game_id: @game.id)
  	only_once.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	only_once = current_user.only_onces.find_by(game_id: @game.id)
  	only_once.destroy
  end
end
