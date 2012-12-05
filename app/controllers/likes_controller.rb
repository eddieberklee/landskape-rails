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
    res = { :like_created => false }
    if Like.where("user_id = ? AND photo_id = ?", params[:user_id], params[:photo_id]).first == nil
      if Like.create(params)
        res[like_created] = true
      end
    else
      Like.where("user_id = ? AND photo_id = ?", params[:user_id], params[:photo_id]).destroy_all
      res[like_created] = false
    end
    puts res.to_json
    respond_to do |format|
      format.json { render :json => res.to_json }
    end
  end
  
end
