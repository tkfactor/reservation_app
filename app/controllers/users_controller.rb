class UsersController < ApplicationController
  def account
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:image, :name, :user_introduction))
      flash[:success] = "プロフィールを更新しました"
      redirect_to :users_profile
    else
      render "profile"
   end
  end
end
