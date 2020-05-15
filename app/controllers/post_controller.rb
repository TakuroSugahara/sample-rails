class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def add
    @post = Post.new
    if request.post? then
      @post = Post.create post_params
      redirect_to "/posts/#{@post.id}"
    end
  end

  def edit
    @post = Post.find params[:id]
    if request.patch? then
      @post.update patch_params
      redirect_to "/posts/#{@post.id}"
    end
  end

  def delete
    if request.delete? then
      @post = Post.find params[:id]
      @post.delete
      redirect_to "/posts/#{@post.id}"
    end
  end

  def show
    @post = Post.find params[:id]
    logger.debug @post.inspect
  end

  private
  def post_params
      params.require(:post).permit(:title, :content, :status)
  end

  def patch_params
      params.require(:post).permit(:title, :content, :status)
  end
end
