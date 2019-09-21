class StudiesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	study = current_user.studies.new(game_id: game.id)
  	study.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	study = current_user.studies.find_by(game_id: game.id)
  	study.destroy
  	redirect_to game_path(game)
  end
end
