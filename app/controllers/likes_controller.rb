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

    user_id = params[:user_id].to_i
    photo_id = params[:photo_id].to_i

    logger.debug(params[:user_id])

    likes = Like.where(:user_id => user_id).where(:photo_id => photo_id).length

    if likes == 0
      logger.debug(Like.create(:user_id => user_id, :photo_id => photo_id))
      @like = Like.create(:user_id => user_id, :photo_id => photo_id)
      @like.save
      logger.debug(@like)
      if @like
        answer = true
      end
    else
      Like.where("user_id = ? AND photo_id = ?", user_id, photo_id).destroy_all
      logger.debug('hiiiiii')
      answer = false
    end
    respond_to do |format|
      format.json { render :json => {:is_liked => answer.to_json} }
    end
    # return :json => {:success => true, :is_liked => answer}
  end
  
end
