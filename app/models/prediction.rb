class Prediction < ApplicationRecord
  belongs_to :user
  belongs_to :bowl
  belongs_to :team
end
