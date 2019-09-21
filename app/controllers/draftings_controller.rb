class DraftingsController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	drafting = current_user.draftings.new(game_id: game.id)
  	drafting.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	drafting = current_user.draftings.find_by(game_id: game.id)
  	drafting.destroy
  	redirect_to game_path(game)
  end
end
