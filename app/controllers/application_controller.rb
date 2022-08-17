class ApplicationController < ActionController::Base
    include SessionsHelper

    def require_logged_in
        unless logged_in?
            flash[:danger] = "ログインしてください。"
            redirect_to signin_url
        end
    end

    def already_logged_in
        if logged_in?
            flash[:danger] = "ログインしています。"
            redirect_to tasks_path
        end
    end
end