class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.create(user_id: params[:user_id], post_id: params[:post_id])
        redirect_to users_post_path(params[:user_id], params[:post_id])
    end
end
