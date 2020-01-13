class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@musics = @user.musics
  end

  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path(current_user)
    end
  end

  def update
    if current_user
       @user = User.find(params[:id])
       if @user.update(user_params)
       	flash[:success] = "You have updated user successfully."
          redirect_to user_path(@user.id)
         else
          flash[:danger] = @user.errors.full_messages
          render "edit"
       end
     else
    end
   end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end