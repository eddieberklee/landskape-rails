class UserController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    get_and_store_username()
    get_users_photos(1)
    if params[:success] != nil
      @display_status = true;
      @status = params[:success] != 'false' ? "Uploaded photo successfully" : "Failed to upload photo. Try again."
    end
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

  #def search_bar
  #  redirect_to :controller => "photos", :action => "search_bar", :latitude => params[:latitude], :longitude => params[:longitude]
  #end

  def get_and_store_username
    @user = User.find_by_id(session[:current_user_id])
    if !@user
      redirect_to logins_path()
    end
  end

  def get_users_photos(page)
    @photos = Photo.order("created_at DESC").where(:user_id => @user.id)
    if !@photos.first
      @photo_error = "No uploaded photos."
    end
  end

end
