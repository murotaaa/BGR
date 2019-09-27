class CarefulliesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	carefully = current_user.carefullies.new(game_id: @game.id)
  	carefully.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	carefully = current_user.carefullies.find_by(game_id: @game.id)
  	carefully.destroy
  end
end
