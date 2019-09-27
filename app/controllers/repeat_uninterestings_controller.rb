class RepeatUninterestingsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	repeat_uninteresting = current_user.repeat_uninterestings.new(game_id: @game.id)
  	repeat_uninteresting.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	repeat_uninteresting = current_user.repeat_uninterestings.find_by(game_id: @game.id)
  	repeat_uninteresting.destroy
  end
end
