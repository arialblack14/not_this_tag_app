class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = if params[:tag]
      Post.tagged_with(params[:tag]).paginate(:page => params[:page]).order('id DESC')
    else
      Post.page(params[:page]).order('created_at DESC').per_page(4)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save(post_params)
      flash[:success] = "Successfully created post!"
      redirect_to posts_path
    else
      flash[:error] = "Error creating new post!"
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post!"
      redirect_to posts_path(@post)
    else
      flash[:notice] = "Error updating post!"
      render :edit
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to posts_path
    else
      flash[:alert] = "Error deleting post!"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :tag_list)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
