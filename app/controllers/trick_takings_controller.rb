class TrickTakingsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	trick_taking = current_user.trick_takings.new(game_id: @game.id)
  	trick_taking.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	trick_taking = current_user.trick_takings.find_by(game_id: @game.id)
  	trick_taking.destroy
  end
end
