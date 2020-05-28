class ZensController < ApplicationController
    before_action :find_post
    before_action :find_zen, only: [:destroy]

    def create
        if already_zen?
            flash[:notice] = 'You can\'t zen more than once'
        else
            @post.zens.create(user_id: current_user.id)
        end
        redirect_to post_path(@post)
    end
    
    def destroy
        if !(already_zen?)
            flash[:notice] = 'Cannot unzen'
        else
            @zen.destroy
        end
        redirect_to post_path(@post)
    end
    
    private
    def find_zen
        @zen = @post.zens.find(params[:id])
    end

    def find_post
        @post = Post.find(params[:post_id])
    end

    def already_zen?
        Zen.where(user_id: current_user.id, post_id: params[:post_id]).exists?
    end

end
