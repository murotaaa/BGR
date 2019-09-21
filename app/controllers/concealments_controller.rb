class ConcealmentsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	concealment = current_user.concealments.new(game_id: game.id)
  	concealment.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	concealment = current_user.concealments.find_by(game_id: game.id)
  	concealment.destroy
  	redirect_to game_path(game)
  end
end
