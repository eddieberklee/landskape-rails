class UserController < ApplicationController
  protect_from_forgery

  def show
    get_and_store_username()
    @pages_user = User.find_by_username(params[:id])
    get_users_photos(@pages_user.id)
    return render :action => "index"
  end

  def index
    get_and_store_username()
    @pages_user = @user
    get_users_photos(@user.id)
    if params[:success] != nil
      @display_status = true;
      #@status = "Uploaded photo successfully";
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

  def get_users_photos(id)
    @photos = Photo.order("created_at DESC").where(:user_id => id)
    if !@photos.first
      @photo_error = "No uploaded photos."
    end
  end

end
