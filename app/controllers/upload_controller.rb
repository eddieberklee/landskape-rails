class UploadController < ApplicationController
  protect_from_forgery

  def show
    get_and_store_user()
  end

  def index
    get_and_store_user()
    @photo = Photo.new
  end

  def new
  end

  def create
    get_and_store_user()
    if @user
      flash[:notice] = "Photo filename.png has been successfully uploaded!"
      return render :action => photos_url
    else
      redirect_to logins_url
      return
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def get_and_store_user
    @user = User.find_by_id(session[:current_user_id])
    puts session[:current_user_id]
    puts User.find_by_id(session[:current_user_id])
  end

end
