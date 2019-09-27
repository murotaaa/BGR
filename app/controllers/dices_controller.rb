class DicesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	dice = current_user.dices.new(game_id: @game.id)
  	dice.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	dice = current_user.dices.find_by(game_id: @game.id)
  	dice.destroy
  end
end
