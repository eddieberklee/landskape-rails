class UploadController < ApplicationController
  protect_from_forgery

  def show
    get_and_store_user()
  end

  def index
    get_and_store_user()
  end

  def new
  end

  def create
    get_and_store_user()
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

  def get_and_store_user
    @user = User.find_by_id(session[:current_user_id])
    puts session[:current_user_id]
    puts User.find_by_id(session[:current_user_id])
  end

end
