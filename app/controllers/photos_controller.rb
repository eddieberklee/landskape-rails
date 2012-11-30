class PhotosController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    get_and_store_username()
    #@username = 'eddie'
  end

  def get_and_store_username
    user = User.find_by_id(session[:current_user_id])
    @username = user.username
  end

  def new
  end

  def create
    get_and_store_username()
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
