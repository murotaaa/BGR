class HandManagementsController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	hand_management = current_user.hand_managements.new(game_id: @game.id)
  	hand_management.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	hand_management = current_user.hand_managements.find_by(game_id: @game.id)
  	hand_management.destroy
  end
end
