class PostsController < ApplicationController
  def index
    @new.all
  end

  def new
    @new = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:image)
  end
end
