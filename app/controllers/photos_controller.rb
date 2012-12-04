class PhotosController < ApplicationController
  protect_from_forgery

  def show
  end

  def index
    get_and_store_username()
    if !@user
    end
  end

  def new
  end

  def create
    get_and_store_username()
    flash[:notice] = "success upload"
    params[:photo][:latitude] = params[:latitude]
    params[:photo][:longitude] = params[:longitude]
    @photo = Photo.new(params[:photo])
    @photo.user = @user
    if @photo.save
      ''
    else
      flash[:warning] = @photo.errors
    end
    redirect_to photos_path
    return
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

end
