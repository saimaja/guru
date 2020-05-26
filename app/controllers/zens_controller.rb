class ZensController < ApplicationController
    
    def create
        @zen = Zen.create(user_id: params[:user_id], post_id: params[:post_id])
        redirect_to users_post_path(params[:user_id], params[:post_id])
    end


end
