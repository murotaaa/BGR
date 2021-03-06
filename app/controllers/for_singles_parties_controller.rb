class ForSinglesPartiesController < ApplicationController
  def create
  	@game = Game.find(params[:game_id])
  	for_singles_party = current_user.for_singles_parties.new(game_id: @game.id)
  	for_singles_party.save
  end

  def destroy
  	@game = Game.find(params[:game_id])
  	for_singles_party = current_user.for_singles_parties.find_by(game_id: @game.id)
  	for_singles_party.destroy
  end
end
