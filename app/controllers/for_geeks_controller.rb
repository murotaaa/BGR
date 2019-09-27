class ForGeeksController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	for_geek = current_user.for_geeks.new(game_id: @game.id)
  	for_geek.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	for_geek = current_user.for_geeks.find_by(game_id: @game.id)
  	for_geek.destroy
  end
end
