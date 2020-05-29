class ZensController < ApplicationController
    before_action :find_post
    before_action :find_zen, only: [:destroy]
    
    def create
        if current_user.already_zen?(@post)
            redirect_to post_path(@post), :flash => { :notice => "Relax, you already zenned this!" }    
        else
            @post.zens.create(user_id: current_user.id)
            redirect_to post_path(@post)
        end
    end
    
    def destroy
        if !(current_user.already_zen?(@post))
            flash[:notice] = 'Sorry, you can\'t unzen'
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

   
end
