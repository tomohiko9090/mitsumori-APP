class UsersController < ApplicationController
    before_action :require_logged_in, only: [:show] #showアクションの前に、require_logged_inアクションを実行
    before_action :already_logged_in, only: [:new, :create]
    def index
        @user = User.new
    end

    def new
        @user = User.new
    end

    def show
        @user = current_user
        # @tasks = current_user.tasks.all
        # render tasks_path
     end

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

      private
      def user_params
        params.require(:user).permit(:name, :email, :birth_date, :password, :password_confirmation)
      end
end
