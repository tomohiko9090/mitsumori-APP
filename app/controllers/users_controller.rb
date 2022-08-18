class UsersController < ApplicationController
    before_action :require_logged_in, only: [:show]
    before_action :already_logged_in, only: [:new, :create]

    # テンプレ表示メソッド
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = current_user
    end

    def edit
      @user = current_user
    end


    # アクションメソッド
    def create
        @user = User.new(user_params)
        if @user.save 
          session[:user_id] = @user.id
          flash[:success] = "登録成功です"
          redirect_to tasks_path
        else
          flash[:danger] = "登録できませんでした"
          render :new
        end
    end
    
    def update
      @user = User.find(params[:user][:id])
      if @user.update(user_params)
        flash[:success] = "更新できました"
        redirect_to tasks_path
      else
        flash.now[:danger] = "更新できませんでした"
        render :edit
      end
    end

    private
    def user_params
      params.require(:user).permit(:name, :email, :birth_date, :password, :password_confirmation, :nickname)
    end
end
