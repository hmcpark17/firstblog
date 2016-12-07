class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

end

class UserController

  def index
    @users = User.paginate(:page => params[:page], :per_page => 2)
 
  end

end

