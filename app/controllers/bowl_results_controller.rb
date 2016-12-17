class BowlResultsController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_caleb

  def verify_caleb
    redirect_to :home unless current_user.username == 'DrSayre'
  end

  def index
    @bowls = Bowl.all.includes(:teams).order(:game_date)
    @results = BowlResult.all
  end

  def winner
    BowlResult.where(bowl_id: params[:bowl_id]).first_or_create.update(team_id: params[:team_id])
  end
end
