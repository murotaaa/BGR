class RepeatMoreInterestingsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	repeat_more_interesting = current_user.repeat_more_interestings.new(game_id: @game.id)
  	repeat_more_interesting.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	repeat_more_interesting = current_user.repeat_more_interestings.find_by(game_id: @game.id)
  	repeat_more_interesting.destroy
  end
end
