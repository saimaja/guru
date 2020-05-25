class ZensController < ApplicationController
    
    before_action :find_post 

    def create
        @post.zens.create(params[:user_id])
        redirect_to post_path(@post)
    end

    private

    def find_post
        @post = Post.find(params[:post_id])
    end






end
