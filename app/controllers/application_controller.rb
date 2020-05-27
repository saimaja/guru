class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    # before_action :authorized

    def homepage
    end

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!session[:user_id]
    end

    def authorized
        redirect_to '/' unless logged_in?
    end
end
