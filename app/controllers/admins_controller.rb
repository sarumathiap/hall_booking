class AdminsController < ApplicationController

def index
end
  def new
  
  end

  def create
    
@admin=Admin.find_by_email(params[:email])

    if @admin && @admin.authenticate(params[:password])
session[:email_id] = @admin.id
     
redirect_to :controller => 'registers', :action => 'new'

      #redirect_to url_for(:controller => :sessions, :action => :show)
    else
      
      flash[:notice]= "Invalid"
      render "new"	
    end
 end 


end
