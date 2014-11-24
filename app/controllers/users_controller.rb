class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def search
    @users=User.all
	@user=User.new(user_params)
	
  end
  def list
    @users=User.all
  end
  def new
    @user=User.new
  end
  def edit
    @user=User.find(params[:id])
  end
  def create
    @user=User.new(user_params)
	
	if @user.save
	 redirect_to users_path
	else
	 redirect_to users_path
    end	 
  end
  def show
    @friendship=Friendship.new
    @user=User.find(params[:id])
	@users=User.all
  @friends = get_my_friends(params[:id])
  end
  def destroy
    @user=User.find(params[:id])
	@user.destroy
	redirect_to users_path
  end
  
  private
    def user_params
	params.require(:user).permit(:name)
	end
end
