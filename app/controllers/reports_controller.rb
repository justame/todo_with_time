class ReportsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :auth_admin
  
  respond_to :html, :xml, :json

  def index
    @users = User.all
    gon.users = @users
    
    respond_with(@users)
  end

def show
    @user = User.find(params[:id])
    
    respond_with(@user)
  end  
end
