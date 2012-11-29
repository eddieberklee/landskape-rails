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
      @username = params[:username]
      redirect_to "/photos"
    else
      @login_fail = true
    end
  end

  def edit
  end

  def update
  end

  def destroy

  end


end
