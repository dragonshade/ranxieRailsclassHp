class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
    @posts=Post.all
  end

  def show
    @posts = Post.all
    if @post = Post.find(params[:id])
    end
  end

  def create
    @post=Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def destroy
    @posts=Post.all
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
    def post_params
      params.require(:post).permit(:title,:body)
    end
end
