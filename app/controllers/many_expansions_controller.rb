class ManyExpansionsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	many_expansion = current_user.many_expansions.new(game_id: @game.id)
  	many_expansion.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	many_expansion = current_user.many_expansions.find_by(game_id: @game.id)
  	many_expansion.destroy
  end
end
