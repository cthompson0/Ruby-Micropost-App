class LikedPostController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:id])
    unless current_user.likes?(@micropost)
      current_user.like(@micropost)
    end
    respond_to do |format|
      format.html { redirect_to @micropost }
      format.js
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    current_user.unlike(@micropost)
    respond_to do |format|
      format.html { redirect_to @micropost }
      format.js
    end
  end
end
