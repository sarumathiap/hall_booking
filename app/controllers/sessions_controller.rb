class SessionsController < ApplicationController

def index
@sessions=Page.all

end
  def new
  
  end

  def create
  
    @authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if @authorized_user
session[:user_id] = @authorized_user.id
      flash[:notice] = "You logged in as #{@authorized_user.name}\n\n"

#render text: "#{@authorized_user.name}\n #{@authorized_user.email}\n #{@authorized_user.company}\n #{@authorized_user.dept}"
redirect_to(:controller => 'users', :action => 'new')
#redirect_to 'users/show'
      #redirect_to url_for(:controller => :users, :action => :show)
    else
      
      flash[:notice]= "Invalid"
      render "new"  
    end
  
  end
  
def destroy
  session[:user_id] = nil
  redirect_to :action => 'new'
end
end
