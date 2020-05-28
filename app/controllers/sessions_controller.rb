class SessionsController < ApplicationController
    # skip_before_action :authorized, only: [:show_login_form, :login_user]

    def show_login_form
        redirect_to '/'
    end


    def login_user
        username = params[:username]
        password = params[:password]
        logged_in_user = User.find_by(username: username)
        
        if logged_in_user && logged_in_user.authenticate(password)
            session[:logged_in_user_id] = logged_in_user.id
            redirect_to feed_path
        else
            flash[:error_message] = "No user found with that name and password"
            redirect_to '/'
        end
    end

    def logout_user
        session.clear
        redirect_to '/'
    end
end
