class ExcitementsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	excitement = current_user.excitements.new(game_id: game.id)
  	excitement.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	excitement = current_user.excitements.find_by(game_id: game.id)
  	excitement.destroy
  	redirect_to game_path(game)
  end
end
