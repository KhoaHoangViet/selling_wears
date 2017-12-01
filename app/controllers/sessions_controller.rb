class SessionsController < ApplicationController
  before_action :login_and_redirect_back, only: :create

  def new
  end

  def create
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def login_and_redirect_back
    user = User.find_by email: params[:session][:email].downcase

    if user_has_logined?(user)
      log_in user
      remember_user(user)
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end

  def user_has_logined?(user)
    user && user.authenticate(params[:session][:password])
  end

  def remember_user(user)
    params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  end
end
