class ForBeginnersController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	for_beginner = current_user.for_beginners.new(game_id: game.id)
  	for_beginner.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	for_beginner = current_user.for_beginners.find_by(game_id: game.id)
  	for_beginner.destroy
  	redirect_to game_path(game)
  end
end
