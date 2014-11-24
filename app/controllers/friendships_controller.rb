class FriendshipsController < ApplicationController
  def index
  end
  
  def create
    @user=User.find(params[:user_id])
    @friendship=@user.friendships.create(friendship_params)
	redirect_to user_path(@user)
  end
  def destroy
    @user=User.find(params[:user_id])
    @friendship=@user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to user_path(@user)
  end
  private 
    def friendship_params
	  params.require(:friendship).permit(:friend_id)
	end
end
