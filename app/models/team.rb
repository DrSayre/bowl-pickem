class Team < ApplicationRecord
  has_one :bowl_game
  has_one :bowl, through: :bowl_game
end
