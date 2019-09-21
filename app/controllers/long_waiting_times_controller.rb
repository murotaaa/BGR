class LongWaitingTimesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	long_waiting_time = current_user.long_waiting_times.new(game_id: game.id)
  	long_waiting_time.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	long_waiting_time = current_user.long_waiting_times.find_by(game_id: game.id)
  	long_waiting_time.destroy
  	redirect_to game_path(game)
  end
end
