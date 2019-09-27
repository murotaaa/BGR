class WithFriendCanEnjoysController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	with_friend_can_enjoy = current_user.with_friend_can_enjoys.new(game_id: @game.id)
  	with_friend_can_enjoy.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	with_friend_can_enjoy = current_user.with_friend_can_enjoys.find_by(game_id: @game.id)
  	with_friend_can_enjoy.destroy
  end
end
