class UsersController < ApplicationController
  def index
    @user_total = User.left_joins(:contents).group(:name).sum(:payment).sort {|(k1, v1), (k2, v2)| v2 <=> v1 }.to_h
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
