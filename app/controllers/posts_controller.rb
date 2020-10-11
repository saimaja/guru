class PostsController < ApplicationController

    before_action :find_post, only: [:show, :edit, :update, :destroy]
    
    def index
        # @posts = Post.left_joins(:zens).group(:post_id).order('COUNT(post_id) DESC')
        @posts = Post.all.includes(:zens, :comments, :user)
        @posts = @posts.sort {|a, b| b.zens.size <=> a.zens.size }
    end

    def show
        @new_comment = Comment.new
    end

    # def create_comment
    #     @post = Post.find(params[:id])
    #     Comment.create(text: params[:comment][:text], user_id: current_user.id, post_id: params[:id])
    #     redirect_to post_path(@post)
    # end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to post_path(@post)
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :description, :media_type, :user_id, :media_link)
    end

end
