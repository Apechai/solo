class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @vote = Vote.new(params[:vote])
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(:page => params[:page])
    @post = current_user.posts.build(params[:post])
  end

end
