class NegotiationsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	negotiation = current_user.negotiations.new(game_id: @game.id)
  	negotiation.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	negotiation = current_user.negotiations.find_by(game_id: @game.id)
  	negotiation.destroy
  end
end
