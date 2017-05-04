class TasksController < ApplicationController
	def index
@task=Task.all
end
 def new
    @task = Task.new 
#@users=User.all
  end
  def create
    @task = Task.new(user_params)
    if @task.save
      flash[:notice] = "You signed up successfully\n"
   redirect_to new_user_path

    else
      
      flash[:notice]= "invalid"
redirect_to new_user_path
    end
   
  end
def show
@users=User.all

#@user=User.find_by(params[:user_id])
#@user=User.find(params[:id])
end

def edit
@user= User.find_by(params[:user_id])
#@user=current_user
end
def update
@user =User.find(params[:id])
if @user.update(user_params)
redirect_to @user
#if @user.update(:current_user)
#redirect_to current_user

end
end


private

  def user_params
    params.require(:task).permit(:name,:email,:password_digest,:password_confirmation)
  end
end

