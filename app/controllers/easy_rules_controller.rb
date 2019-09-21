class EasyRulesController < ApplicationController
  def create
  	game = Game.find(params[:game_id])
  	easy_rule = current_user.easy_rules.new(game_id: game.id)
  	easy_rule.save
  	redirect_to game_path(game)
  end

  def destroy
  	game = Game.find(params[:game_id])
  	easy_rule = current_user.easy_rules.find_by(game_id: game.id)
  	easy_rule.destroy
  	redirect_to game_path(game)
  end
end
