class LikesController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    get_and_store_username()
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def get_and_store_username
    @user = User.find_by_id(session[:current_user_id])
    puts session[:current_user_id]
    puts User.find_by_id(session[:current_user_id])
  end

  def add_like
    answer = false
    if Like.where("user_id = ? AND photo_id = ?", params[:user_id].to_i, params[:photo_id].to_i).first == nil
      if Like.create(:user_id => params[:user_id], :photo_id => params[:photo_id])
        answer = true
      end
    else
      Like.where("user_id = ? AND photo_id = ?", params[:user_id].to_i, params[:photo_id].to_i).destroy_all
      answer = false
    end
    return :json => {:success => true, :is_liked => answer}
  end
  
end
