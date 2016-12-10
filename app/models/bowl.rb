class Bowl < ApplicationRecord
  has_many :bowl_games
  has_many :teams, through: :bowl_games
end
