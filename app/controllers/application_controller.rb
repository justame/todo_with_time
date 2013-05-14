class ApplicationController < ActionController::Base
  #protect_from_forgery

  def index
    
  end

  def auth_admin
    redirect_to :root if !!current_user.is_admin == false
  end
end
