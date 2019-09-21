class TagsController < ApplicationController
  def new
  	@tag = Tag.new
  end

  def create
  	tag = Tag.new(tag_params)
    tag.user_id = current_user.id
    tag.save
    redirect_to games_path
  end

  def update
  	game = Game.find(params[:game_id])
  	tag = current_user.tags.new(game_id: game.id)
  	tag.update
  	redirect_to game_path(game)
  end

  private

  def tag_params
    params.require(:tag).permit(:excellent, :good)
  end
end
