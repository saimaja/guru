class ApplicationController < ActionController::Base

    helper_method :current_user
    # before_action :authorized

    def homepage
    end

    def current_user
        # memoization
        if @current_user
            return @current_user
        else
            @current_user = User.find_by(id: session[:logged_in_user_id])
            return @current_user
        end
    end

    # def logged_in?
    #     !!session[:user_id]
    # end

    # def authorized
    #     redirect_to '/' unless logged_in?
    # end
end
