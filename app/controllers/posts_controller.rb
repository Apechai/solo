class PostsController < ApplicationController
	before_filter :authenticate_user!
	
  def index
    @vote = Vote.new(params[:vote])
      if params[:status] == "alphabetical"
        @posts = Post.alphabetical
      else
        @posts = Post.recent
      end
  end

	def new
	  @post = current_user.posts.build(params[:post])
	end
	
	def create
	  @post = current_user.posts.build(params[:post])
	  
    if @post.save
      flash[:success] = "Post created"
      redirect_to root_path
    else
      render 'posts/new'
    end
  end
  
	def destroy
	end

end

