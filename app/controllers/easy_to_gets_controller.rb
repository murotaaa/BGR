class EasyToGetsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	easy_to_get = current_user.easy_to_gets.new(game_id: @game.id)
  	easy_to_get.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	easy_to_get = current_user.easy_to_gets.find_by(game_id: @game.id)
  	easy_to_get.destroy
  end
end
