class AreaMajoritiesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	area_majority = current_user.area_majorities.new(game_id: game.id)
  	area_majority.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	area_majority = current_user.area_majorities.find_by(game_id: game.id)
  	area_majority.destroy
  	redirect_to game_path(game)
  end
end
