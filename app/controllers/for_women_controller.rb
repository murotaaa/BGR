class ForWomenController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	for_woman = current_user.for_women.new(game_id: game.id)
  	for_woman.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	for_woman = current_user.for_women.find_by(game_id: game.id)
  	for_woman.destroy
  	redirect_to game_path(game)
  end
end
