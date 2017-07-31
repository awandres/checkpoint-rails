class PostsController < ApplicationController

def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)

    redirect_to "/posts/#{@post.id}"
  end

  #show
  def show
    @post = Post.find(params[:id])
  end
