class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:name], params[:password])
      redirect_back_or_to(:users, notice: 'login successful!!!')
    else
      flash.now[:notice] = 'login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'logged out!')
  end
end
