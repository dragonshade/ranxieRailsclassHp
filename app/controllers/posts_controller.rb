class PostsController < ApplicationController
  def index
    @posts=Post.allsortbydate
  end

  def new
    @posts=Post.allsortbydate
  end

  def show
    @posts = Post.allsortbydate
    if @post = Post.find(params[:id])
    end
  end

  def create
    @post=Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def destroy
    @posts=Post.allsortbydate
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
    def post_params
      params.require(:post).permit(:title,:body)
    end
end
