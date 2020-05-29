class CommentsController < ApplicationController
    before_action :find_post

    def create
        Comment.create(text: params[:comment][:text], user_id: current_user.id, post_id: params[:post_id])
        redirect_to post_path(@post)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end


    private

    def find_post
        @post = Post.find(params[:post_id])
    end
end
  

