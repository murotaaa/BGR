class DraftingsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	drafting = current_user.draftings.new(game_id: @game.id)
  	drafting.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	drafting = current_user.draftings.find_by(game_id: @game.id)
  	drafting.destroy
  end
end
