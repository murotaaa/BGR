class ForcesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	force = current_user.forces.new(game_id: @game.id)
  	force.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	force = current_user.forces.find_by(game_id: @game.id)
  	force.destroy
  end
end
