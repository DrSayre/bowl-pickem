class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to :predictions, notice: 'Predictions Saved!'
    else
      redirect_to :predictions, alert: @user.errors.full_messages.first
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:username)
  end
end
