class GamesController < ApplicationController
  def index
      @search = Game.ransack(params[:q])
      @search.sorts = 'id desc' if @search.sorts.empty?
      @games = @search.result.page(params[:page]).per(8)

      @excellent_ranks = Game.find(Excellent.group(:game_id).order('count(game_id) desc').limit(4).pluck(:game_id))
      @beginner_ranks = Game.find(ForBeginner.group(:game_id).order('count(game_id) desc').limit(4).pluck(:game_id))
      @excitement_ranks = Game.find(Excitement.group(:game_id).order('count(game_id) desc').limit(4).pluck(:game_id))
  end

  def show
      @game = Game.find(params[:id])
  end

  def new
      @game = Game.new
  end

  def create
      game = Game.new(game_params)
      game.user_id = current_user.id
      game.save
      redirect_to games_path
  end

  def edit
      @game = Game.find(params[:id])
  end

  def update
      game = Game.find(params[:id])
      game.update(game_params)
      redirect_to games_path
  end

  def destroy
      game = Game.find(params[:id])
      game.destroy
      redirect_to games_path
  end

  def about
  end

private
  def game_params
    params.require(:game).permit(:image, :title, :original_title, :designer, :release, :player, :age, :weight)
  end
end
