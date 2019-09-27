class ForMenController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	for_man = current_user.for_men.new(game_id: @game.id)
  	for_man.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	for_man = current_user.for_men.find_by(game_id: @game.id)
  	for_man.destroy
  end
end
