class VotesController < ApplicationController
  def index
  end

  def new
    @vote = Vote.new
    
    respond_to do |format|
      format.html
      formal.xml
    end
  end

  def create
    @vote = Vote.new(params[:vote])
    post = params[:vote][:post_id]
    uid = params[:vote][:user_id] 
    if @vote.save
      flash[:success] = "You voted for the article"
      redirect_to root_path
    else
      flash[:failure] = "You did not vote"
      @posts = Post.popular
      render 'posts/index'
    end
      
  end

  def destroy
  end

end
