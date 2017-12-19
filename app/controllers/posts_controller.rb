class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
    else
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end

end