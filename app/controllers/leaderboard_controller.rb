class LeaderboardController < ApplicationController
  def show
    @users = User.all.order(:score)
  end
end
