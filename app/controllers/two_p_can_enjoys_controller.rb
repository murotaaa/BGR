class TwoPCanEnjoysController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	two_p_can_enjoy = current_user.two_p_can_enjoys.new(game_id: @game.id)
  	two_p_can_enjoy.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	two_p_can_enjoy = current_user.two_p_can_enjoys.find_by(game_id: @game.id)
  	two_p_can_enjoy.destroy
  end
end
