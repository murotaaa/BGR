class ExcellentsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	excellent = current_user.excellents.new(game_id: game.id)
  	excellent.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	excellent = current_user.excellents.find_by(game_id: game.id)
  	excellent.destroy
  	redirect_to game_path(game)
  end
end
