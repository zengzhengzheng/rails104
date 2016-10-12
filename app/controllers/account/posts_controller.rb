class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def destroy
    @posts = Group.find(params[:id])
    @post.destroy
    redirect_to group_post_path
  end

end
