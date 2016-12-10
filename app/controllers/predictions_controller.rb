class PredictionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bowls = Bowl.all.includes(:teams).order(:game_date)
    @predictions = current_user.predictions
  end

  def pick
    Prediction.where(user_id: params[:user_id], bowl_id: params[:bowl_id]).first_or_create.update(team_id: params[:team_id])
  end
end
