class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@watches = @user.watches.all
  end

  def edit
  end

  def update
  end
end
