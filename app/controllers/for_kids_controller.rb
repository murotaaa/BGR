class ForKidsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	for_kid = current_user.for_kids.new(game_id: @game.id)
  	for_kid.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	for_kid = current_user.for_kids.find_by(game_id: @game.id)
  	for_kid.destroy
  end
end
