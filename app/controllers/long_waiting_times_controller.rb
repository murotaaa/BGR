class LongWaitingTimesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	long_waiting_time = current_user.long_waiting_times.new(game_id: @game.id)
  	long_waiting_time.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	long_waiting_time = current_user.long_waiting_times.find_by(game_id: @game.id)
  	long_waiting_time.destroy
  end
end
