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
    if params[:action_name] == "like"
      answer = false
      query = Like.where("user_id = ? AND photo_id = ?", params[:action_data][:user_id].to_i, params[:action_data][:photo_id].to_i)
      if query.first == nil
        if Like.create(params[:action_data])
          answer = true
        end
      else
        query.destroy_all
        answer = false
      end
      return render :json => {:is_liked => answer}
    elsif params[:action_name] == "comment"
      if Comment.create(params[:action_data])
        return render :json => {:commented => true}
      else
        return render :json => {:commented => false}
      end
    end
  end
  
end
