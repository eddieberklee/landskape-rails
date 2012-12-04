class UserController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    get_and_store_username()
    get_users_photos(1)
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
    if !@user
      redirect_to logins_path()
    end
  end

  def get_users_photos(page)
    @photos = Photo.order("created_at DESC").where(:user_id => 1).eager_load_values
    if !@photos.first
      @photo_error = "No uploaded photos."
    end
  end

end
