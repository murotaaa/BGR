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
      if user_signed_in?
        @game = Game.find(params[:id])
      else
        redirect_to new_user_session_path ,notice: 'ログインしてください。'
      end
  end

  def new
      @game = Game.new
  end

  def create
      game = Game.new(game_params)
      if
        game.save
        redirect_to games_path
      else
        redirect_to new_game_path ,notice: '全ての項目を埋めてください。'
      end
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
