class ForTeensController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	for_teen = current_user.for_teens.new(game_id: game.id)
  	for_teen.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	for_teen = current_user.for_teens.find_by(game_id: game.id)
  	for_teen.destroy
  	redirect_to game_path(game)
  end
end
