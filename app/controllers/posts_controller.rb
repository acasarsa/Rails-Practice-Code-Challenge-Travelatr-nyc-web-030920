class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :likes]

  def show
  end

  def new
    @post = Post.new
  end

  def likes #patch route 
    # byebug
    @post.increment!(:likes)  #increases integer attribute by 1 
                              #! saves the changes for the redirect_to
    redirect_to @post
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to @post
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)  
    else
    flash[:errors] = @post.errors.full_messages
    redirect_to edit_post_path(@post)
    end
  end



  private

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end

