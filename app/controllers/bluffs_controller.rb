class BluffsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	bluff = current_user.bluffs.new(game_id: @game.id)
  	bluff.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	bluff = current_user.bluffs.find_by(game_id: @game.id)
  	bluff.destroy
  end
end
