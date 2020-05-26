class ApplicationController < ActionController::Base

    helper_method :current_user

    def homepage
    end

    def about
    end

    def current_user
        #memoization
        if @current_user
            return @current_user
        else
            @current_user = User.find(session[:logged_in_user])
            return @current_user
        end
    end
end
