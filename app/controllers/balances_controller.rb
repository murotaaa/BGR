class BalancesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	balance = current_user.balances.new(game_id: @game.id)
  	balance.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	balance = current_user.balances.find_by(game_id: @game.id)
  	balance.destroy
  end
end
