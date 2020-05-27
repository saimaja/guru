class SessionsController < ApplicationController

    def show_login_form
        redirect_to '/'
    end


    def login_user
        username = params[:username]
        logged_in_user = User.find_by(username: username)
        if logged_in_user
            session[:logged_in_user] = logged_in_user.id
            redirect_to feed_path
        else
            flash[:error_message] = "No user found with that name"
            redirect_to '/'
        end
    end

    def logout_user
        session.clear
        redirect_to '/'
    end
end
