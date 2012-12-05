class PhotosController < ApplicationController
  protect_from_forgery

  def show
  end

  def photoinfo
    data = {}
    photo = Photo.find_by_id(params[:id])
    data[:comments] = photo.comments
    data[:likes] = photo.likes.length
    data[:large_photo] = photo.photo.url(:large)
    data[:photo] = photo
    data[:username] = User.find_by_id(photo.user_id).username
    @ret = data.to_json
    respond_to do |format|
      format.json { render :json => @ret}
    end
  end

  def index
    get_and_store_username()
    get_pics_by_location(@user.latitude, @user.longitude, 0.1)
  end

  def new
  end

  def create
    get_and_store_username()
    flash[:notice] = "success upload"
    @photo = Photo.new(params[:photo])
    @photo.user = @user
    if @photo.save
      params[:success] = true
    else
      params[:success] = false
    end
    redirect_to :controller => "user", :action => "index", :success => params[:success]
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

  def search_bar
    get_and_store_username()
    get_pics_by_location(params[:search_form][:latitude].to_f, params[:search_form][:longitude].to_f, 0.1)
    return render :action => "index"
  end

  def get_pics_by_location(lat, long, dist)
    max_expansions = 5
    curr_expansions = 1
    while curr_expansions <= max_expansions
      total_dist = dist * curr_expansions
      @photos = Photo.order("created_at DESC")
      @photos = @photos.where("latitude > ? AND latitude < ? AND longitude > ? AND longitude < ?", \
                              lat - total_dist, lat + total_dist, long - total_dist, long + total_dist)
      if @photos.first
        break
      end
      curr_expansions += 1
    end
    if !@photos.first
      @photo_error = "There are no photos in your area."
    end
  end

  def get_pics_by_upload_time
    @photos = Photo.order("created_at DESC")
    if !@photos.first
      @photo_error = "There are no photos in your area."
    end
  end

end
