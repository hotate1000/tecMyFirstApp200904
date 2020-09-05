class PostsController < ApplicationController

  def index
     @posts = Post.all
  end

  def new
  end

  def create
    # Post.create(content: params[:content])
    Post.create(post_params)
  end

  private
  def post_params
    # params.permit()
    params.permit(:content)
  end
end
