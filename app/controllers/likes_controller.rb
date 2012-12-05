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
    if Like.where("user_id = ? AND photo_id = ?", params[:user_id], params[:photo_id]).first == nil
      if Like.create(params)
        answer = true
      end
    else
      Like.where("user_id = ? AND photo_id = ?", params[:user_id], params[:photo_id]).destroy_all
      answer = false
    end
    @res = answer.to_json
    return
  end
  
end
