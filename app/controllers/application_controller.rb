class ApplicationController < ActionController::Base

    helper_method :current_user
    # before_action :authorized

    def homepage
        if current_user
            redirect_to feed_path
        end
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

    

    # def authorized
    #     redirect_to '/' unless logged_in?
    # end
end
