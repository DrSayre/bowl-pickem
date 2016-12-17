class BowlResult < ApplicationRecord
  after_save :update_contestants
  belongs_to :bowl
  belongs_to :team

  def update_contestants
    User.all.each do |user|
      update_user(user)
    end
  end

  def update_user(user)
    points = 0
    correct = 0
    incorrect = 0
    BowlResult.all.each do |result|
      win = user.predictions.select{|prediction| prediction.bowl_id == result.bowl_id && prediction.team_id == result.team_id}.count == 1
      correct = correct + 1 if win
      incorrect = incorrect + 1 unless win
      points = points + result.bowl.points if win
    end
    user.update(correct: correct, wrong: incorrect, score: points)
  end
end
