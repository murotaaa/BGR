class CarefulliesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	carefully = current_user.carefullies.new(game_id: game.id)
  	carefully.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	carefully = current_user.carefullies.find_by(game_id: game.id)
  	carefully.destroy
  	redirect_to game_path(game)
  end
end
