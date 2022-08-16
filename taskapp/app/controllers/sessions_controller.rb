class SessionsController < ApplicationController
  before_action :require_logged_in, only: [:destroy]
  before_action :already_logged_in, only: [:new, :create]
  
  def new
  end

  def create
    email = params[:session][:email].downcase 
    password = params[:session][:password] 
    if signin(email, password)
      flash[:success] = "ログインしました。"
      redirect_to tasks_path
    else
      flash.now[:danger] = "メールアドレスまたは、パスワードが違います。"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "ログアウトしました。"
    redirect_to signin_url
  end

  private
  def signin(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      return true
    else
      return false
    end
  end
end
