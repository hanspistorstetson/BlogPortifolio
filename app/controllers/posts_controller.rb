class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy]

  def index

  end

  def show

  end

  def edit

  end

  def update

    if @post.update post_params
      redirect_to @post, notice: "Updated breh"
    else
      render 'edit', notice: "You're fucking up bud"
    end

  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Nice Job Bro"
    else
      render 'new', notice: "didn't work bud"
    end

  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end


end
