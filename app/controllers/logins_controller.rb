class LoginsController < ActionController::Base
  protect_from_forgery

  def post
  end

  def show
  end

  def index
    @login_fail = false
  end

  def new

  end

  def create
    if user = User.authenticate(params[:username], params[:password])
      session[:current_user_id] = user.id
      redirect_to photos_url
    else
      if params[:signup] == "signup"
        if user = User.create_new_user(params)
          session[:current_user_id] = user.id
          redirect_to photos_url
        else
          @signup_fail = true
          @error_message = "Someone with the same username already exists. Choose a new one."
          return render :action => "index"
        end
        #Do signup stuff
      else
        @login_fail = true
        @error_message = "The given login was not found or the password did not match."
        return render :action => "index"
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy

  end


end
