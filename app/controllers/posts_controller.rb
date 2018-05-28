class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end


  def view
    @post = Post.find(params[:id])
  end
  
  def update 
  end

    private

    def posts_params
      params.require(:post).permit(:title, :date, :body, :completed)
    end
end
